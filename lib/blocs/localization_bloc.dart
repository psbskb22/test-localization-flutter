import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

sealed class LocalizationEvent {}

class ChangeLanguageEvent extends LocalizationEvent {
  final Locale locale;
  ChangeLanguageEvent(this.locale);
}

class LocalizationBloc extends Bloc<LocalizationEvent, Locale> {
  LocalizationBloc() : super(Locale('es')) {
    on<ChangeLanguageEvent>((event, emit) {
      emit(event.locale);
    });
  }
}
