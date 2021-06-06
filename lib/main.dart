import 'package:flutter/material.dart';
import 'package:question_game/question.dart';
import 'app_question.dart';

AppQuestion appquestion = AppQuestion();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "اختر ",
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: QuestionPage(),
        ),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<Widget> answerResult = [];
  void checkAnswer(bool check) {
    bool correctAnswer =
        appquestion.questionGroup[questionNumber].answerQuestion;

    setState(() {
      if (check == correctAnswer) {
        answerResult.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_up,
            color: Colors.green,
          ),
        ));
      } else {
        answerResult.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(Icons.thumb_down, color: Colors.green),
        ));
      }
      questionNumber++;
    });
  }

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Row(
                children: answerResult,
              ),
              Image.asset(
                appquestion.questionGroup[questionNumber].questionImage,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                appquestion.questionGroup[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              child: Text('صح'),
              onPressed: () {
                checkAnswer(true);
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              child: Text('خطأ'),
              onPressed: () {
                checkAnswer(false);
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.deepOrange,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
