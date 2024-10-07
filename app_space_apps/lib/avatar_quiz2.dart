import 'package:flutter/material.dart';
import 'avatar_quiz3.dart';

class AvatarQuiz2 extends StatefulWidget {
  const AvatarQuiz2({super.key});
  @override
  _AvatarQuiz2State createState() => _AvatarQuiz2State();
}

class _AvatarQuiz2State extends State<AvatarQuiz2> {
  bool is1Pressed = false;
  bool is2Pressed = false;
  bool is3Pressed = false;
  bool is4Pressed = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 13, 51, 69),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            const Text(
              'Customize your avatar',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 146, 146, 146),
                fontFamily: 'SFPro_Bold',
                fontSize: 15,
                letterSpacing: 2,
                decoration: TextDecoration.none,
              ),
            ),
            
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const Text(
              'A special skill of yours',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'SFPro_Bold',
                fontSize: 40,
                letterSpacing: 3,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: is1Pressed ? Color.fromARGB(255,246, 196, 95): Color.fromARGB(145, 51, 83, 96),
                padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  is1Pressed = !is1Pressed;
                  is3Pressed = false;
                  is2Pressed = false;
                  is4Pressed = false;
                });
              },
              child: const Text(
                '        I can adapt.        ',
                softWrap: true,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Medium',
                  fontSize: 25.0,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: is3Pressed ? Color.fromARGB(255,246, 196, 95): Color.fromARGB(145, 51, 83, 96),
                padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  is3Pressed = !is3Pressed;
                  is2Pressed = false;
                  is1Pressed = false;
                  is4Pressed = false;
                });
              },
              child: const Text(
                'I can solve problems.',
                softWrap: true,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Medium',
                  fontSize: 25.0,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: is4Pressed ? Color.fromARGB(255,246, 196, 95): Color.fromARGB(145, 51, 83, 96),
                padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  is4Pressed = !is4Pressed;
                  is3Pressed = false;
                  is1Pressed = false;
                  is2Pressed = false;
                });
              },
              child: const Text(
                '         Cheerful.            ',
                softWrap: true,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Medium',
                  fontSize: 25.0,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: is2Pressed ? Color.fromARGB(255,246, 196, 95): Color.fromARGB(145, 51, 83, 96),
                padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  is2Pressed = !is2Pressed;
                  is3Pressed = false;
                  is1Pressed = false;
                  is4Pressed = false;
                });
              },
              child: const Text(
                '      I think ahead.      ',
                softWrap: true,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Medium',
                  fontSize: 25.0,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 232, 179, 73),
                padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const AvatarQuiz3(),
                ));
              },
              child: const Text(
                "Next",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Black',
                  fontSize: 25.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}