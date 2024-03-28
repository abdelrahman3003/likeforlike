import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project2/loc.dart';

import 'like4like/login/f_splash.dart';
import 'shared/translate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LocalizationService localizationService = LocalizationService();

  await localizationService.loadLocalizedStrings('ar');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Appo",
      locale: Locale('ar'),
      supportedLocales: [
        const Locale('ar'),
        const Locale('en'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: f_splashScrean(),
    );
  }
}
