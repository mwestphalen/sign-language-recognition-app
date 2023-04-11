import 'package:ASL/dict.dart';
import 'package:ASL/constants.dart';
import 'package:ASL/learningScreen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import './quizScreen.dart';

class ASLDashboard extends StatelessWidget {
  const ASLDashboard({super.key});

  @override
  Widget build(BuildContext context) => Container(
      decoration: const BoxDecoration(color: kPrimaryColor),
      child: Align(
        alignment: Alignment.center,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          //const SizedBox(height: 220),
          //const Padding(padding: EdgeInsets.only(top: 5)),
          ElevatedButton(
            style: addButtonStyle(),
            child: const Text(
              'LEARN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () async {
              await availableCameras().then((value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => LearningScreen(frontCamera: value[1]))));
            },
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: addButtonStyle(),
            child: const Text(
              'QUIZ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuizApp()),
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: addButtonStyle(),
            child: const Text(
              'DICTIONARY',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ASLDictionaryScreen()),
              );
            },
          ),
        ]),
      ));

  ButtonStyle addButtonStyle() {
    return ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => kSecondaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(33.0))),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18)),
        minimumSize: MaterialStateProperty.all(const Size(280, 65)));
  }
}
