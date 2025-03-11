import 'package:get_it/get_it.dart';
import 'feature/home/presentation/bloc/home_bloc.dart';

final serviceLocator = GetIt.instance;

Future init() async {
  ///feature home
  ///bloc
  serviceLocator.registerFactory(() => HomeBloc());
}
