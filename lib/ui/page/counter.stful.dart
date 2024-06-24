import 'package:flutter/material.dart';

class CounterStlessPage extends StatefulWidget {
  const CounterStlessPage({super.key});

  @override
  State<CounterStlessPage> createState() => _CounterStlessPageState();
}

class _CounterStlessPageState extends State<CounterStlessPage> {
  int counter = 0;
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter stful",
          style: TextStyle(fontSize: 25, color: Colors.white70),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Counter value => ${counter}",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          (errorMessage != "")
              ? Text(
                  errorMessage,
                  style: TextStyle(fontSize: 22, color: Colors.red),
                )
              : Text("")
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "min",
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  --counter;
                  errorMessage = "";
                } else {
                  errorMessage = "counter value can not be less than 0";
                }
              });
            },
            child: Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "max",
            onPressed: () {
              setState(() {
                if (counter < 10) {
                  ++counter;
                  errorMessage = "";
                } else {
                  errorMessage = "counter value can not be greater than 10";
                }
              });
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
