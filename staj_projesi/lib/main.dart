import 'package:flutter/material.dart';

import 'package:staj_projesi/screens/quiz/quis_screen.dart';
//import 'package:staj_projesi/Models/question_model.dart';
import './Models/db_connect.dart';

void main() {
  var db = Dbconnect();
  // db.addQuestion(Question(id: '45', title: 'Buradaki hayvani sole', options: {
  //   'a': false,
  //   'b': false,
  //   'c': true,
  //   'd': false,
  // }));
  db.fetchQuestions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Project',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 113, 184, 241),
      ),
      home: QuizScreen(),
    );
  }
}
