import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class LocalizationDelegateEs extends LocalizationsDelegate<ESLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return locale.languageCode == 'es';
  }

  @override
  Future<ESLocalizations> load(Locale locale) {
    return SynchronousFuture<ESLocalizations>(ESLocalizations(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<ESLocalizations> old) {
    return false;
  }
}

class ESLocalizations {
  ESLocalizations(this.locale);

  final Locale locale;

  static ESLocalizations of(BuildContext context) {
    return Localizations.of<ESLocalizations>(context, ESLocalizations)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      'title': 'Hello World',
    },
    'es': {
      'title': 'Hola Mundo',
    },
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }
}
