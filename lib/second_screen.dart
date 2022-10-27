import 'package:blocwithmasrafi/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blocs"),
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocBuilder(
        bloc: counterBloc,
        builder: (context, state) {
          return Center(
            child: Text(
              counterBloc.state.counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
