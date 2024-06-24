import 'package:enset_app/ui/widgets/main.drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Text(
            "Hello Walid",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ));
  }
}
