import 'package:flutter/material.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/languages.dart';
import 'package:flutter_multilanguaqge_demo/localization/locale_constants.dart';
import 'package:flutter_multilanguaqge_demo/model/language_model.dart';
import 'package:flutter_multilanguaqge_demo/screens/change_language_screen.dart';

/*
Title:HomePageScreen
Purpose:HomePageScreen
Created By:Kalpesh Khandla
*/

class HomePageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.language,
            color: Colors.white,
          ),
          title: Text(Languages.of(context).appName),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Text(
                  Languages.of(context).labelWelcome,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  Languages.of(context).labelInfo,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeLanguageScreen(),
                        ),
                      );
                    },
                    child: Text("Go to Change Language Screen "),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
