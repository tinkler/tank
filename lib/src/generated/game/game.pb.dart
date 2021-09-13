///
//  Generated code. Do not modify.
//  source: game/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $1;

import 'game.pbenum.dart';

export 'game.pbenum.dart';

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'session')
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse({
    $core.String? session,
  }) {
    final _result = create();
    if (session != null) {
      _result.session = session;
    }
    return _result;
  }
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get session => $_getSZ(0);
  @$pb.TagNumber(1)
  set session($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
}

class MoveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..e<MoveRequest_Direction>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: MoveRequest_Direction.UP, valueOf: MoveRequest_Direction.valueOf, enumValues: MoveRequest_Direction.values)
    ..hasRequiredFields = false
  ;

  MoveRequest._() : super();
  factory MoveRequest({
    MoveRequest_Direction? direction,
  }) {
    final _result = create();
    if (direction != null) {
      _result.direction = direction;
    }
    return _result;
  }
  factory MoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveRequest clone() => MoveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveRequest copyWith(void Function(MoveRequest) updates) => super.copyWith((message) => updates(message as MoveRequest)) as MoveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoveRequest create() => MoveRequest._();
  MoveRequest createEmptyInstance() => create();
  static $pb.PbList<MoveRequest> createRepeated() => $pb.PbList<MoveRequest>();
  @$core.pragma('dart2js:noInline')
  static MoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveRequest>(create);
  static MoveRequest? _defaultInstance;

  @$pb.TagNumber(5)
  MoveRequest_Direction get direction => $_getN(0);
  @$pb.TagNumber(5)
  set direction(MoveRequest_Direction v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(5)
  void clearDirection() => clearField(5);
}

class StepFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 's')
    ..aOM<$1.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 't', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  StepFrame._() : super();
  factory StepFrame({
    $fixnum.Int64? s,
    $1.Timestamp? t,
  }) {
    final _result = create();
    if (s != null) {
      _result.s = s;
    }
    if (t != null) {
      _result.t = t;
    }
    return _result;
  }
  factory StepFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepFrame clone() => StepFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepFrame copyWith(void Function(StepFrame) updates) => super.copyWith((message) => updates(message as StepFrame)) as StepFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepFrame create() => StepFrame._();
  StepFrame createEmptyInstance() => create();
  static $pb.PbList<StepFrame> createRepeated() => $pb.PbList<StepFrame>();
  @$core.pragma('dart2js:noInline')
  static StepFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepFrame>(create);
  static StepFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get s => $_getI64(0);
  @$pb.TagNumber(1)
  set s($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasS() => $_has(0);
  @$pb.TagNumber(1)
  void clearS() => clearField(1);

  @$pb.TagNumber(2)
  $1.Timestamp get t => $_getN(1);
  @$pb.TagNumber(2)
  set t($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasT() => $_has(1);
  @$pb.TagNumber(2)
  void clearT() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureT() => $_ensure(1);
}

class GameWorld extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GameWorld', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GameWorld._() : super();
  factory GameWorld({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GameWorld.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameWorld.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameWorld clone() => GameWorld()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameWorld copyWith(void Function(GameWorld) updates) => super.copyWith((message) => updates(message as GameWorld)) as GameWorld; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameWorld create() => GameWorld._();
  GameWorld createEmptyInstance() => create();
  static $pb.PbList<GameWorld> createRepeated() => $pb.PbList<GameWorld>();
  @$core.pragma('dart2js:noInline')
  static GameWorld getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameWorld>(create);
  static GameWorld? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Offset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Offset', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dx', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dy', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Offset._() : super();
  factory Offset({
    $core.double? dx,
    $core.double? dy,
  }) {
    final _result = create();
    if (dx != null) {
      _result.dx = dx;
    }
    if (dy != null) {
      _result.dy = dy;
    }
    return _result;
  }
  factory Offset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Offset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Offset clone() => Offset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Offset copyWith(void Function(Offset) updates) => super.copyWith((message) => updates(message as Offset)) as Offset; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Offset create() => Offset._();
  Offset createEmptyInstance() => create();
  static $pb.PbList<Offset> createRepeated() => $pb.PbList<Offset>();
  @$core.pragma('dart2js:noInline')
  static Offset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Offset>(create);
  static Offset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get dx => $_getN(0);
  @$pb.TagNumber(1)
  set dx($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDx() => $_has(0);
  @$pb.TagNumber(1)
  void clearDx() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get dy => $_getN(1);
  @$pb.TagNumber(2)
  set dy($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDy() => $_has(1);
  @$pb.TagNumber(2)
  void clearDy() => clearField(2);
}

class TankAttr extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TankAttr', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..aOM<Offset>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', subBuilder: Offset.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bodyAngle', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'turretAngle', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetBodyAngle', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetTurretAngle', $pb.PbFieldType.OF)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  TankAttr._() : super();
  factory TankAttr({
    Offset? position,
    $core.double? bodyAngle,
    $core.double? turretAngle,
    $core.double? targetBodyAngle,
    $core.double? targetTurretAngle,
    $core.String? name,
  }) {
    final _result = create();
    if (position != null) {
      _result.position = position;
    }
    if (bodyAngle != null) {
      _result.bodyAngle = bodyAngle;
    }
    if (turretAngle != null) {
      _result.turretAngle = turretAngle;
    }
    if (targetBodyAngle != null) {
      _result.targetBodyAngle = targetBodyAngle;
    }
    if (targetTurretAngle != null) {
      _result.targetTurretAngle = targetTurretAngle;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory TankAttr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TankAttr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TankAttr clone() => TankAttr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TankAttr copyWith(void Function(TankAttr) updates) => super.copyWith((message) => updates(message as TankAttr)) as TankAttr; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TankAttr create() => TankAttr._();
  TankAttr createEmptyInstance() => create();
  static $pb.PbList<TankAttr> createRepeated() => $pb.PbList<TankAttr>();
  @$core.pragma('dart2js:noInline')
  static TankAttr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TankAttr>(create);
  static TankAttr? _defaultInstance;

  @$pb.TagNumber(1)
  Offset get position => $_getN(0);
  @$pb.TagNumber(1)
  set position(Offset v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => clearField(1);
  @$pb.TagNumber(1)
  Offset ensurePosition() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get bodyAngle => $_getN(1);
  @$pb.TagNumber(2)
  set bodyAngle($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBodyAngle() => $_has(1);
  @$pb.TagNumber(2)
  void clearBodyAngle() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get turretAngle => $_getN(2);
  @$pb.TagNumber(3)
  set turretAngle($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTurretAngle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTurretAngle() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get targetBodyAngle => $_getN(3);
  @$pb.TagNumber(4)
  set targetBodyAngle($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetBodyAngle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetBodyAngle() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get targetTurretAngle => $_getN(4);
  @$pb.TagNumber(5)
  set targetTurretAngle($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTargetTurretAngle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetTurretAngle() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);
}

class TanksAttr extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TanksAttr', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..pc<TankAttr>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tanks', $pb.PbFieldType.PM, subBuilder: TankAttr.create)
    ..aOM<StepFrame>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'step', subBuilder: StepFrame.create)
    ..hasRequiredFields = false
  ;

  TanksAttr._() : super();
  factory TanksAttr({
    $core.Iterable<TankAttr>? tanks,
    StepFrame? step,
  }) {
    final _result = create();
    if (tanks != null) {
      _result.tanks.addAll(tanks);
    }
    if (step != null) {
      _result.step = step;
    }
    return _result;
  }
  factory TanksAttr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TanksAttr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TanksAttr clone() => TanksAttr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TanksAttr copyWith(void Function(TanksAttr) updates) => super.copyWith((message) => updates(message as TanksAttr)) as TanksAttr; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TanksAttr create() => TanksAttr._();
  TanksAttr createEmptyInstance() => create();
  static $pb.PbList<TanksAttr> createRepeated() => $pb.PbList<TanksAttr>();
  @$core.pragma('dart2js:noInline')
  static TanksAttr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TanksAttr>(create);
  static TanksAttr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TankAttr> get tanks => $_getList(0);

  @$pb.TagNumber(2)
  StepFrame get step => $_getN(1);
  @$pb.TagNumber(2)
  set step(StepFrame v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStep() => $_has(1);
  @$pb.TagNumber(2)
  void clearStep() => clearField(2);
  @$pb.TagNumber(2)
  StepFrame ensureStep() => $_ensure(1);
}

