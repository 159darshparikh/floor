import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:grocery/core/model/floor/database.dart';
import 'package:grocery/presentation/screens/login/login_screen.dart';
import 'package:grocery/utils/responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Responsiveness.init();
    Initialize().initDatabase();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginScreen(),
    );
  }
}

class Initialize {
  static var database;

  initDatabase() async {
    database ??=
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }
}
