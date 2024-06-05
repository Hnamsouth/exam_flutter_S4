import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam/controller/student_controller.dart';
import 'package:exam/data/exam_data.dart';
import 'package:exam/screens/first_page.dart';
import 'package:exam/screens/home.dart';
import 'package:exam/screens/widget/new_page.dart';
import 'package:exam/screens/second_page.dart';
import 'package:exam/screens/third_page.dart';
import 'package:exam/service/firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

///
/// web       1:847227291097:web:0bb3eac20cb243a7d805c8
/// android   1:847227291097:android:1ccb974681e64243d805c8
///
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StudentController());

    // FireStore fireStore = FireStore();
    // studentData.map((e) => fireStore.addData(e.toJson(), 'students')).toList();
    // fireStore.getData('students').then((value) => print(value.length));

    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[700],
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const Home(),
      routes: {
        '/first': (context) => const New(child: FirstPage()),
        '/second': (context) => const New(child: SecondPage()),
        '/third': (context) => const New(child: ThirdPage()),
      },
    );
  }
}
