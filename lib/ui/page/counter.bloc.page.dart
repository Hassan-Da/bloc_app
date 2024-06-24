import 'package:enset_app/bloc/counter.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter bloc",
          style: TextStyle(fontSize: 25, color: Colors.white70),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterSuccessState || state is CounterInitialState) {
            return Text(
              "Counter value => ${state.counter}",
              style: Theme.of(context).textTheme.bodyLarge,
            );
          } else if (state is CounterErrorState) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Counter value => ${state.counter}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  (state.errorMessage != "")
                      ? Text(
                          state.errorMessage,
                          style: TextStyle(fontSize: 22, color: Colors.red),
                        )
                      : Text("")
                ]);
          } else {
            return Container();
          }
        },
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "min",
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounter());
            },
            child: Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "max",
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounter());
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
