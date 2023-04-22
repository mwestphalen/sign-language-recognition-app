import 'package:ASL/Learn/ui/camera/camera_view.dart';
import 'package:ASL/Learn/ui/progress_bar.dart';
import 'package:ASL/Style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// [LearnScreen] stacks [CameraView] and [BoxWidget]s with bottom sheet for stats
class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  double results = 0.0;
  int currentQuestion = 0;
  List<String> imagePaths = [
    'assets/images/a.png',
    'assets/images/b.png',
    'assets/images/c.png',
    'assets/images/d.png',
    'assets/images/e.png',
    'assets/images/f.png',
    'assets/images/g.png',
    'assets/images/h.png',
    'assets/images/i.png',
    'assets/images/k.png',
    'assets/images/l.png',
    'assets/images/m.png',
    'assets/images/n.png',
    'assets/images/o.png',
    'assets/images/p.png',
    'assets/images/q.png',
    'assets/images/r.png',
    'assets/images/s.png',
    'assets/images/t.png',
    'assets/images/u.png',
    'assets/images/v.png',
    'assets/images/w.png',
    'assets/images/x.png',
    'assets/images/y.png',
  ];

// Move to the next question
  void _nextQuestion() {
    currentQuestion++;
  }

  /// Scaffold Key
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  // Returns the square borded camera preview
  SizedBox buildCameraPreview(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                //borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  margin: const EdgeInsets.all(30.0),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(width: 6, color: kPrimaryColor)),
                  child: CameraView(resultsCallback),
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  // Return to main menu
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    // Set return button styling
                    icon: const Icon(
                      CupertinoIcons.back,
                      size: 35,
                      color: kPrimaryColor,
                    ),
                  ),
                  // Call progress bar function
                  ProgressBar(
                    currentQuestion: currentQuestion,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Column(
                children: [
                  const Text(
                    // Prompt user to sign the letter to the camera
                    "Your Turn",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Sign it to the camera",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 25.0),
                  Container(
                    width: 150,
                    height: 150,
                    // Display the ASL letter to be handsigned by the user
                    // with the passed in imagePath
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kPrimaryColor, width: 5),
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(imagePaths[currentQuestion]),
                          fit: BoxFit.fill,
                        )),
                  ),
                  const SizedBox(height: 20.0),
                  // Display the letter to be handsigned by using the first
                  // letter of the image from imagePath (i.e. "A" from "assets/images/A.png")
                  Text(
                    imagePaths[currentQuestion].substring(14, 15).toUpperCase(),
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor),
                  ),
                ],
              ),
            ),
            buildCameraPreview(context),
            // Center(
            //   child: GestureDetector(
            //     // Next Question Button
            //     onTap: () {
            //       if (currentQuestion >= questions.length - 1) {
            //         Navigator.pushReplacement(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const ResultsPage()));
            //       } else {
            //         setState(() {
            //           _nextQuestion();
            //         });
            //       }
            //     },
            //     child: const Text(
            //       "Next",
            //       style: TextStyle(
            //           color: kPrimaryColor,
            //           decoration: TextDecoration.underline,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 17),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  /// Callback to get inference results from [CameraView]
  void resultsCallback(double results) {
    setState(() {
      this.results = results;
    });
  }
}
