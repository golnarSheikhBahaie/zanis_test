import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static const platform = MethodChannel('samples.flutter.dev/randomNumber');

  HomeBloc() : super(Empty());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is CreateRandomNumberEvent) {
      yield GetRandomNumberLoading();
      String rNum = '';
      try {
        final result = await platform.invokeMethod('createRandomNumber');
        rNum = '$result';
        yield RandomNumberReceived(rN: rNum);
      } catch (e) {
        yield GetRandomNumberFail();
      }
    }
  }
}
