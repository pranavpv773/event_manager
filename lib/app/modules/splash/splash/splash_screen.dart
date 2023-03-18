// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calender_events/app/modules/splash/splash/splash_cubit.dart';
import 'package:calender_events/app/modules/splash/splash/splash_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final screenCubit = SplashCubit();

  @override
  void initState() {
    screenCubit.loadInitialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashCubit, SplashState>(
        bloc: screenCubit,
        listener: (BuildContext context, SplashState state) {
          if (state.error != null) {
            // TODO your code here
          }
        },
        builder: (BuildContext context, SplashState state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return buildBody(state);
        },
      ),
    );
  }

  Widget buildBody(SplashState state) {
    return ListView(
      children: const [
        // TODO your code here
      ],
    );
  }
}
