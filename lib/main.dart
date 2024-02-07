import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/bloc/switch_bloc.dart';
import 'package:statemanagement/image_picker/bloc/imagepicker_bloc.dart';
import 'package:statemanagement/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => ImagepickerBloc(),
        ),
      ],
      child: const MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
