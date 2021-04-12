import 'package:flutter/material.dart';

/*
Title:Languages
Purpose:Languages
Created By:Kalpesh Khandla
*/

abstract class Languages {
  static Languages of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get appName;

  String get labelWelcome;

  String get labelInfo;

  String get labelChangeLanguage;

  String get labelSelectLanguage;
}
