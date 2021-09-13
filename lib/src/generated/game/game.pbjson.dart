///
//  Generated code. Do not modify.
//  source: game/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'session', '3': 1, '4': 1, '5': 9, '10': 'session'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEhgKB3Nlc3Npb24YASABKAlSB3Nlc3Npb24=');
@$core.Deprecated('Use moveRequestDescriptor instead')
const MoveRequest$json = const {
  '1': 'MoveRequest',
  '2': const [
    const {'1': 'direction', '3': 5, '4': 1, '5': 14, '6': '.game.MoveRequest.Direction', '10': 'direction'},
  ],
  '4': const [MoveRequest_Direction$json],
};

@$core.Deprecated('Use moveRequestDescriptor instead')
const MoveRequest_Direction$json = const {
  '1': 'Direction',
  '2': const [
    const {'1': 'UP', '2': 0},
    const {'1': 'RIGHT', '2': 1},
    const {'1': 'DOWN', '2': 2},
    const {'1': 'LEFT', '2': 3},
  ],
};

/// Descriptor for `MoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveRequestDescriptor = $convert.base64Decode('CgtNb3ZlUmVxdWVzdBI5CglkaXJlY3Rpb24YBSABKA4yGy5nYW1lLk1vdmVSZXF1ZXN0LkRpcmVjdGlvblIJZGlyZWN0aW9uIjIKCURpcmVjdGlvbhIGCgJVUBAAEgkKBVJJR0hUEAESCAoERE9XThACEggKBExFRlQQAw==');
@$core.Deprecated('Use stepFrameDescriptor instead')
const StepFrame$json = const {
  '1': 'StepFrame',
  '2': const [
    const {'1': 's', '3': 1, '4': 1, '5': 3, '10': 's'},
    const {'1': 't', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 't'},
  ],
};

/// Descriptor for `StepFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepFrameDescriptor = $convert.base64Decode('CglTdGVwRnJhbWUSDAoBcxgBIAEoA1IBcxIoCgF0GAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIBdA==');
@$core.Deprecated('Use gameWorldDescriptor instead')
const GameWorld$json = const {
  '1': 'GameWorld',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GameWorld`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameWorldDescriptor = $convert.base64Decode('CglHYW1lV29ybGQSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use offsetDescriptor instead')
const Offset$json = const {
  '1': 'Offset',
  '2': const [
    const {'1': 'dx', '3': 1, '4': 1, '5': 1, '10': 'dx'},
    const {'1': 'dy', '3': 2, '4': 1, '5': 1, '10': 'dy'},
  ],
};

/// Descriptor for `Offset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offsetDescriptor = $convert.base64Decode('CgZPZmZzZXQSDgoCZHgYASABKAFSAmR4Eg4KAmR5GAIgASgBUgJkeQ==');
@$core.Deprecated('Use tankAttrDescriptor instead')
const TankAttr$json = const {
  '1': 'TankAttr',
  '2': const [
    const {'1': 'position', '3': 1, '4': 1, '5': 11, '6': '.game.Offset', '10': 'position'},
    const {'1': 'body_angle', '3': 2, '4': 1, '5': 2, '10': 'bodyAngle'},
    const {'1': 'turret_angle', '3': 3, '4': 1, '5': 2, '10': 'turretAngle'},
    const {'1': 'target_body_angle', '3': 4, '4': 1, '5': 2, '10': 'targetBodyAngle'},
    const {'1': 'target_turret_angle', '3': 5, '4': 1, '5': 2, '10': 'targetTurretAngle'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TankAttr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tankAttrDescriptor = $convert.base64Decode('CghUYW5rQXR0chIoCghwb3NpdGlvbhgBIAEoCzIMLmdhbWUuT2Zmc2V0Ughwb3NpdGlvbhIdCgpib2R5X2FuZ2xlGAIgASgCUglib2R5QW5nbGUSIQoMdHVycmV0X2FuZ2xlGAMgASgCUgt0dXJyZXRBbmdsZRIqChF0YXJnZXRfYm9keV9hbmdsZRgEIAEoAlIPdGFyZ2V0Qm9keUFuZ2xlEi4KE3RhcmdldF90dXJyZXRfYW5nbGUYBSABKAJSEXRhcmdldFR1cnJldEFuZ2xlEhIKBG5hbWUYBiABKAlSBG5hbWU=');
@$core.Deprecated('Use tanksAttrDescriptor instead')
const TanksAttr$json = const {
  '1': 'TanksAttr',
  '2': const [
    const {'1': 'tanks', '3': 1, '4': 3, '5': 11, '6': '.game.TankAttr', '10': 'tanks'},
    const {'1': 'step', '3': 2, '4': 1, '5': 11, '6': '.game.StepFrame', '10': 'step'},
  ],
};

/// Descriptor for `TanksAttr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tanksAttrDescriptor = $convert.base64Decode('CglUYW5rc0F0dHISJAoFdGFua3MYASADKAsyDi5nYW1lLlRhbmtBdHRyUgV0YW5rcxIjCgRzdGVwGAIgASgLMg8uZ2FtZS5TdGVwRnJhbWVSBHN0ZXA=');
