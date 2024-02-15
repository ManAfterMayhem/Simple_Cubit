import 'package:counter/cubit/cubit.dart';
import 'package:counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return BlocProvider(
    create: (BuildContext context) => CounterCubit(),
    child: BlocConsumer<CounterCubit, CounterStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Counter App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Counter Value:',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '${CounterCubit.get(context).counter}',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        CounterCubit.get(context).increment;
                      },
                      child: const Text('Increment'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        CounterCubit.get(context).decrement;
                      },
                      child: const Text('Decrement'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
