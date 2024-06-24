import 'package:flutter/material.dart';

class GitUserPage extends StatelessWidget {
  const GitUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Git users",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Text(
            "git users",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ));
  }
}
