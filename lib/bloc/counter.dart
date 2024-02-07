import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/bloc/switch_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch and Slider with bloc'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Switch'),
              BlocBuilder<SwitchBloc, SwitchState>(
                buildWhen: (previous, current) =>
                    previous.checker != current.checker,
                builder: (context, state) {
                  print('1');
                  return Switch(
                    value: state.checker,
                    onChanged: (value) {
                      BlocProvider.of<SwitchBloc>(context).add(ToogleSwitch());
                    },
                  );
                },
              ),
            ],
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) => previous.value != current.value,
            builder: (context, state) {
              print('2');

              return Container(
                width: 300,
                height: 200,
                color: Colors.lightBlueAccent.withOpacity(state.value),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(
                    state.value.toStringAsFixed(2),
                    style: const TextStyle(color: Colors.red, fontSize: 70),
                  ),
                ),
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) => previous.value != current.value,
            builder: (context, state) {
              print('3');

              return Slider(
                value: state.value,
                onChanged: (value) {
                  BlocProvider.of<SwitchBloc>(context)
                      .add(ChangeSliderValue(value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
