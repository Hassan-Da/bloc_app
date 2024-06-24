import 'package:enset_app/bloc/counter.bloc.dart';
import 'package:enset_app/bloc/theme.bloc.dart';
import 'package:enset_app/ui/page/counter.bloc.page.dart';
import 'package:enset_app/ui/page/counter.stful.dart';
import 'package:enset_app/ui/page/gituser.page.dart';
import 'package:enset_app/ui/page/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => CounterBloc()),
      BlocProvider(create: (context) => ThemeBloc())
    ], child: RootView());
  }
}

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return MaterialApp(
        theme: state.themeData,
        routes: {
          '/': (context) => HomePage(),
          '/count-stful': (context) => CounterStlessPage(),
          '/count-bloc': (context) => CounterBlocPage(),
          '/gitusers': (context) => GitUserPage(),
        },
        initialRoute: "/",
        title: 'Catalog app',
        // theme: MyTheme.themes[0],
      );
    });
  }
}
