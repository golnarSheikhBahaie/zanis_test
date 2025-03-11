part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends HomeState {}

class GetRandomNumberLoading extends HomeState {}

class GetRandomNumberFail extends HomeState {}

class RandomNumberReceived extends HomeState {
  String? rN;

  RandomNumberReceived({required this.rN});

}
