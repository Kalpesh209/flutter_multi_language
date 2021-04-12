import 'package:flutter/material.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/languages.dart';
import 'package:flutter_multilanguaqge_demo/localization/locale_constants.dart';
import 'package:flutter_multilanguaqge_demo/model/language_model.dart';

/*
Title:ChangeLanguageScreen
Purpose:ChangeLanguageScreen
Created By:Kalpesh Khandla
*/

class ChangeLanguageScreen extends StatefulWidget {
  ChangeLanguageScreen({
    Key key,
  }) : super(key: key);

  @override
  _ChangeLanguageScreenState createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Languages.of(context).labelChangeLanguage,
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              SizedBox(
                width: 10,
              ),
              _createLanguageDropDown()
            ],
          ),
        ),
      ),
    );
  }

  _createLanguageDropDown() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton<LanguageModel>(
          iconSize: 30,
          underline: SizedBox(),
          hint: Text(Languages.of(context).labelSelectLanguage),
          onChanged: (LanguageModel language) {
            changeLanguage(context, language.languageCode);
          },
          items: LanguageModel.languageList()
              .map<DropdownMenuItem<LanguageModel>>(
                (e) => DropdownMenuItem<LanguageModel>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        e.flag,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(e.name)
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
