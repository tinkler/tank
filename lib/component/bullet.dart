import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:tank/game/tank_game.dart';

class Bullet extends PositionComponent with HasGameRef<TankGame> {
  final double speed = 300;
  bool isOffscreen = false;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(const Rect.fromLTWH(-10, -3, 16, 6),
        Paint()..color = const Color(0xffff0000));
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (isOffscreen) {
      return;
    }
    var offset = Offset.fromDirection(angle, speed * dt);
    position += Vector2(offset.dx, offset.dy);
    if (x < -50) {
      isOffscreen = true;
    }
    if (x > gameRef.size.x + 50) {
      isOffscreen = true;
    }
    if (y < -50) {
      isOffscreen = true;
    }
    if (y > gameRef.size.y + 50) {
      isOffscreen = true;
    }
  }
}
