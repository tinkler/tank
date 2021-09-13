import 'dart:ui';
import 'dart:math';
import 'package:flame/components.dart';

class Tank extends PositionComponent {
  final String id;
  double get bodyAngle => angle;
  set bodyAngle(double a) => angle = a;
  double turretAngle = 0;
  final Paint lightPaint = Paint()..color = const Color(0xffdddddd);
  final Paint darkPaint = Paint()..color = const Color(0xff777777);
  double? targetBodyAngle;
  double? targetTurretAngle;

  Tank(this.id);

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(const Rect.fromLTWH(-20, -15, 40, 30), lightPaint);
    // circle
    canvas.drawRect(const Rect.fromLTWH(-24, -23, 48, 8), darkPaint);
    canvas.drawRect(const Rect.fromLTWH(-24, 15, 48, 8), darkPaint);
    // battery
    canvas.rotate(turretAngle);
    canvas.drawRect(const Rect.fromLTWH(-10, -12, 25, 24), darkPaint);
    canvas.drawRect(const Rect.fromLTWH(0, -3, 36, 6), darkPaint);
    canvas.drawRect(const Rect.fromLTWH(36, -5, 6, 10), darkPaint);
  }

  @override
  void update(double dt) {
    final double rotationRate = pi * dt;
    if (targetBodyAngle != null) {
      if (bodyAngle < targetBodyAngle!) {
        if ((targetBodyAngle! - bodyAngle).abs() > pi) {
          bodyAngle = bodyAngle - rotationRate;
          if (bodyAngle < -pi) {
            bodyAngle += pi * 2;
          }
        } else {
          bodyAngle = bodyAngle + rotationRate;
          if (bodyAngle > targetBodyAngle!) {
            bodyAngle = targetBodyAngle!;
          }
        }
      }
      if (bodyAngle > targetBodyAngle!) {
        if ((targetBodyAngle! - bodyAngle).abs() > pi) {
          bodyAngle = bodyAngle + rotationRate;
          if (bodyAngle > pi) {
            bodyAngle -= pi * 2;
          }
        } else {
          bodyAngle = bodyAngle - rotationRate;
          if (bodyAngle < targetBodyAngle!) {
            bodyAngle = targetBodyAngle!;
          }
        }
      }
      if (bodyAngle == targetBodyAngle) {
        var of = Offset.fromDirection(bodyAngle, 100 * dt);
        position += Vector2(of.dx, of.dy);
      } else {
        var of = Offset.fromDirection(bodyAngle, 50 * dt);
        position += Vector2(of.dx, of.dy);
      }
    }
    if (targetTurretAngle != null) {
      double localTargetTurretAngle = targetTurretAngle! - bodyAngle;
      if (turretAngle < localTargetTurretAngle) {
        if ((localTargetTurretAngle - turretAngle).abs() > pi) {
          turretAngle = turretAngle - rotationRate;
          if (turretAngle < -pi) {
            turretAngle += pi * 2;
          }
        } else {
          turretAngle = turretAngle + rotationRate;
          if (turretAngle > localTargetTurretAngle) {
            turretAngle = localTargetTurretAngle;
          }
        }
      }
      if (turretAngle > localTargetTurretAngle) {
        if ((localTargetTurretAngle - turretAngle).abs() > pi) {
          turretAngle = turretAngle + rotationRate;
          if (turretAngle > pi) {
            turretAngle -= pi * 2;
          }
        } else {
          turretAngle = turretAngle - rotationRate;
          if (turretAngle < localTargetTurretAngle) {
            turretAngle = localTargetTurretAngle;
          }
        }
      }
    }
    super.update(dt);
  }

  Vector2 getBulletOffset() {
    var offset = Offset.fromDirection(getBulletAngle(), 36);
    return position + Vector2(offset.dx, offset.dy);
  }

  double getBulletAngle() {
    double bulletAngle = bodyAngle + turretAngle;
    while (bulletAngle > pi) {
      bulletAngle -= pi * 2;
    }
    while (bulletAngle < -pi) {
      bulletAngle += pi * 2;
    }
    return bulletAngle;
  }
}
