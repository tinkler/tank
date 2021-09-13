///
//  Generated code. Do not modify.
//  source: game/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'game.pb.dart' as $0;
export 'game.pb.dart';

class GameClient extends $grpc.Client {
  static final _$loginChar =
      $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
          '/game.Game/LoginChar',
          ($0.LoginRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$moveChar = $grpc.ClientMethod<$0.MoveRequest, $0.StepFrame>(
      '/game.Game/MoveChar',
      ($0.MoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StepFrame.fromBuffer(value));
  static final _$relayTank = $grpc.ClientMethod<$0.TankAttr, $0.TanksAttr>(
      '/game.Game/RelayTank',
      ($0.TankAttr value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TanksAttr.fromBuffer(value));
  static final _$updateTank = $grpc.ClientMethod<$0.TankAttr, $0.StepFrame>(
      '/game.Game/UpdateTank',
      ($0.TankAttr value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StepFrame.fromBuffer(value));

  GameClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> loginChar($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginChar, request, options: options);
  }

  $grpc.ResponseFuture<$0.StepFrame> moveChar($0.MoveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moveChar, request, options: options);
  }

  $grpc.ResponseStream<$0.TanksAttr> relayTank($0.TankAttr request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$relayTank, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.StepFrame> updateTank($0.TankAttr request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTank, request, options: options);
  }
}

abstract class GameServiceBase extends $grpc.Service {
  $core.String get $name => 'game.Game';

  GameServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'LoginChar',
        loginChar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MoveRequest, $0.StepFrame>(
        'MoveChar',
        moveChar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MoveRequest.fromBuffer(value),
        ($0.StepFrame value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TankAttr, $0.TanksAttr>(
        'RelayTank',
        relayTank_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TankAttr.fromBuffer(value),
        ($0.TanksAttr value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TankAttr, $0.StepFrame>(
        'UpdateTank',
        updateTank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TankAttr.fromBuffer(value),
        ($0.StepFrame value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> loginChar_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return loginChar(call, await request);
  }

  $async.Future<$0.StepFrame> moveChar_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MoveRequest> request) async {
    return moveChar(call, await request);
  }

  $async.Stream<$0.TanksAttr> relayTank_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TankAttr> request) async* {
    yield* relayTank(call, await request);
  }

  $async.Future<$0.StepFrame> updateTank_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TankAttr> request) async {
    return updateTank(call, await request);
  }

  $async.Future<$0.LoginResponse> loginChar(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.StepFrame> moveChar(
      $grpc.ServiceCall call, $0.MoveRequest request);
  $async.Stream<$0.TanksAttr> relayTank(
      $grpc.ServiceCall call, $0.TankAttr request);
  $async.Future<$0.StepFrame> updateTank(
      $grpc.ServiceCall call, $0.TankAttr request);
}
