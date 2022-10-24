import 'package:flutter/material.dart';

import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'Screens/LoginAndRegister/LoginForm.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = 'ESkRBjvIlTDkiGnWAJK5CUP9BrxmMN0fsF8cwP3H';
  final keyClientKey = 'UAhW55dzuEhJQqjB6oh0phhqgXIBqogFLg0iHsEr';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl, clientKey: keyClientKey, autoSendSessionId: true);

  // var firstObject = ParseObject('FirstClass')
  //   ..set('message', 'Hey ! First message from Flutter. Parse is now connected');
  // await firstObject.save();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const LoginForm(),
    );
  }
}
