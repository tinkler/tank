import 'dart:async';
import 'dart:math' as $math;
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';
import 'package:tank/component/bullet.dart';
import 'package:tank/component/tank.dart';
import 'package:tank/src/generated/game/game.pb.dart' as $pb;
import 'package:tank/src/generated/game/game.pbgrpc.dart' show GameClient;

class TankGame extends BaseGame {
  // static const String host = '192.168.31.70';

  static const String host = '10.0.2.2';
  late final Tank tank;
  final StreamController<List<$pb.TankAttr>> _streamController =
      StreamController();
  final Map<String, Tank> tanks = {};
  final channel = ClientChannel(host,
      port: 9301,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  late final stub = GameClient(channel);
  late final ResponseStream<$pb.TanksAttr> relayStream;
  late final StreamSubscription<$pb.TanksAttr> relaySub;

  @override
  Future<void> onLoad() async {
    final random = $math.Random();
    var id = List.generate(10, (index) => random.nextInt(index + 10));
    tank = Tank(id.toString());
    tank.x = size.x / 2;
    tank.y = size.y / 2;
    await add(tank);
    relayStream = stub.relayTank(tankAttr);
    relaySub = relayStream.listen((value) {
      _streamController.sink.add(value.tanks);
    });
    _streamController.stream.listen((list) async {
      await Future.forEach(list, ($pb.TankAttr element) async {
        if (element.name == tank.id) {
          return;
        }
        if (tanks[element.name] == null) {
          var t = Tank(element.name);
          tanks[element.name] = t;
          await add(t);
        } else {
          var t = tanks[element.name]!;
          t.position = Vector2(element.position.dx, element.position.dy);
          t.bodyAngle = element.bodyAngle;
          t.targetBodyAngle = element.targetBodyAngle;
          t.turretAngle = element.turretAngle;
          t.targetTurretAngle = element.targetTurretAngle;
        }
      });
    });
  }

  @override
  void render(Canvas canvas) {
    canvas.drawRect(Rect.fromLTWH(0, 0, size.x, size.y),
        Paint()..color = const Color(0xff27ae60));
    super.render(canvas);
  }

  void onLeftJoypadChange(Offset offset) {
    if (offset == Offset.zero) {
      tank.targetBodyAngle = null;
    } else {
      tank.targetBodyAngle = offset.direction;
    }
    updateTank();
  }

  void onRightJoypadChange(Offset offset) {
    if (offset == Offset.zero) {
      tank.targetTurretAngle = null;
    } else {
      tank.targetTurretAngle = offset.direction;
    }
    updateTank();
  }

  void onButtonTap() async {
    await add(Bullet()
      ..position = tank.getBulletOffset()
      ..angle = tank.getBulletAngle());
  }

  @override
  void onDetach() {
    relaySub.cancel();
    _streamController.close();

    channel.shutdown();
    super.onDetach();
  }

  $pb.TankAttr get tankAttr => $pb.TankAttr()
    ..name = tank.id
    ..position = $pb.Offset(dx: tank.position.x, dy: tank.position.y)
    ..bodyAngle = tank.bodyAngle
    ..targetBodyAngle =
        (tank.targetBodyAngle != null ? tank.targetBodyAngle! : 0.0)
    ..turretAngle = tank.turretAngle
    ..targetTurretAngle =
        (tank.targetTurretAngle != null ? tank.targetTurretAngle! : 0);

  updateTank() async {
    try {
      var res = await stub.updateTank(tankAttr);
      print('Step' + res.s.toString());
    } catch (e) {
      print('Caught error: %e');
    }
  }
}
