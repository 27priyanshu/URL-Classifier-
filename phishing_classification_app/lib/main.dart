import 'package:flutter/material.dart';

// import 'package:my_phishing_app/screens/prediction.dart';
// import 'package:my_phishing_app/screens/result_screen.dart';
import 'package:phishing_classification_app/screens/home.dart';
import 'package:phishing_classification_app/screens/learn_screen.dart';
import 'package:phishing_classification_app/screens/mail_screen.dart';
// import 'package:phishing_classification_app/screens/report_screen.dart';
import 'package:phishing_classification_app/screens/url_prediction.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phishing AResultScreenttack Predictor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      localizationsDelegates: [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('hi')],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/prediction': (context) => Predictor(),
        // '/report': (context) => ReportingScreen(),
        '/learn': (context) => Learn_screen(),
        '/mail': (context) => MailScreen(),
      },
    );
  }
}
