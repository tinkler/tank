///
//  Generated code. Do not modify.
//  source: game/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MoveRequest_Direction extends $pb.ProtobufEnum {
  static const MoveRequest_Direction UP = MoveRequest_Direction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UP');
  static const MoveRequest_Direction RIGHT = MoveRequest_Direction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RIGHT');
  static const MoveRequest_Direction DOWN = MoveRequest_Direction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOWN');
  static const MoveRequest_Direction LEFT = MoveRequest_Direction._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEFT');

  static const $core.List<MoveRequest_Direction> values = <MoveRequest_Direction> [
    UP,
    RIGHT,
    DOWN,
    LEFT,
  ];

  static final $core.Map<$core.int, MoveRequest_Direction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MoveRequest_Direction? valueOf($core.int value) => _byValue[value];

  const MoveRequest_Direction._($core.int v, $core.String n) : super(v, n);
}

