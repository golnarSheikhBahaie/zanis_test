import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/widget/main_app_bar.dart';
import '../../../../injector.dart';
import '../bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lineGrey,
        appBar: const MainAppBar(
          title: 'Zanis',
        ),
        body: BlocProvider(
          create: (_) => serviceLocator<HomeBloc>(),
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state is GetRandomNumberFail) {
              } else if (state is RandomNumberReceived) {}
            },
            child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
              if (state is Empty) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(CreateRandomNumberEvent());
                        },
                        child: const Text('Generate Random Number'),
                      ),
                      const Text('- - - - - - -'),
                    ],
                  ),
                );
              } else if (state is GetRandomNumberLoading) {
                return const CircularProgressIndicator();
              } else if (state is RandomNumberReceived) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(CreateRandomNumberEvent());
                        },
                        child: const Text('Generate Random Number'),
                      ),
                      Text("Random NumberReceived ${state.rN}"),
                    ],
                  ),
                );
              } else {
                return const Text("fail");
              }
            }),
          ),
        ));
  }
}
