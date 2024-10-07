import 'package:flutter/material.dart';
import 'avatar_quiz1.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13,33, 161),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height:160.0),
              const Text('estas son tus stats:',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Black',
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 238, 198, 67),
                  padding: const EdgeInsets.fromLTRB(60, 25, 60, 25),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), 
                  ),
                ),
                 onPressed: () {
                  
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AvatarQuiz1(),// manda al quiz de avatar
                  ));
                },
                child: const Text("HAZ TU QUIZ XD",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'SFPro_Black', 
                    fontSize: 25.0,

                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
