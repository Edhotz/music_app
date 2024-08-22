import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  // Atualiza o tema emitindo um novo estado
  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  // Converte o JSON salvo para o estado (ThemeMode)
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final themeIndex = json['theme'] as int?;
    if (themeIndex != null) {
      return ThemeMode.values[themeIndex];
    }
    return null;
  }

  // Converte o estado (ThemeMode) para JSON para ser salvo
  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme': state.index}; // Usa o índice do enum ThemeMode
  }
}
