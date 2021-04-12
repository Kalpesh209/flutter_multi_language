import 'package:flutter/material.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/language_en.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/language_hi.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/languages.dart';



class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'hi'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();

      case 'hi':
        return LanguageHi();
      default:
        return LanguageEn();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}
