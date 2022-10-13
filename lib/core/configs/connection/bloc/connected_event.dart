part of 'connected_bloc.dart';

@immutable
abstract class ConnectedEvent {}

class OnConnectedEvent extends ConnectedEvent {}

class OnNotConnectedEvent extends ConnectedEvent {}
