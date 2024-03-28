import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'src/core/config/routes/app_pages.dart';
import 'src/core/config/themes/app_basic_theme.dart'; // Importez flutter/services pour accéder à SystemChrome

void main() async {
  //  LicenseRegistry.addLicense(() async* {
  //   final license = await rootBundle.loadString('google_fonts/FontUsedwithlicense.txt'); //Replace and add <FontUsedwithlicense.txt> License before publishing the app to play or apple store
  //   yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  // });
  // Assurez-vous que les liaisons Flutter sont initialisées
  WidgetsFlutterBinding.ensureInitialized();
  // Définissez les orientations autorisées (dans ce cas, uniquement portrait)
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.initial,
      title: 'Home Services',
      theme: AppBasicTheme.getLightThemeData(),
      darkTheme: AppBasicTheme.getDarkThemeData(),
      getPages: AppPages.routes,
    );
  }
}
