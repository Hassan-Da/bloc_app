import 'package:enset_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ThemeEvent {}

class SwitchThemeEvent extends ThemeEvent {}

abstract class ThemeState {
  ThemeData themeData;

  ThemeState({required this.themeData});
}

class ThemeSuccessState extends ThemeState {
  ThemeSuccessState({required super.themeData});
}

class ThemeInitialState extends ThemeState {
  ThemeInitialState() : super(themeData: ThemeData(primarySwatch: Colors.teal));
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  int currentThemeIndex = 0;
  List<ThemeData> themes = CustomTheme.themes;

  ThemeBloc() : super(ThemeInitialState()) {
    on((SwitchThemeEvent event, emit) {
      ++currentThemeIndex;
      if (currentThemeIndex >= themes.length) {
        currentThemeIndex = 0;
      }
      emit(ThemeSuccessState(themeData: themes[currentThemeIndex]));
    });
  }
}
