import 'package:flutter/material.dart';
import 'package:kependudukan/screen/input_login.dart';
import 'package:kependudukan/screen/input_new_data.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kependudukan',
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xff377765))),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xff94BEB4)))),
          fontFamily: 'Roboto',
          primaryColor: Color(0xff68A697),
          appBarTheme: AppBarTheme( centerTitle: true, backgroundColor: Color(0xff68A697))),
      home: const InputLogin(),
    );
  }
}
