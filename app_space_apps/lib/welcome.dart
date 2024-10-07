import 'package:flutter/material.dart';
import 'pace.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Color.fromARGB(255, 0, 0, 0),  
            Color.fromARGB(255, 13, 51, 69), 
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/aynitech.png',
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.25),
              const Text(
                'Welcome!',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Bold',
                  fontSize: 45.0,
                  letterSpacing: 4,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Join and start a\nwonderful space\nexperience',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Thin',
                  fontSize: 30.0,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.3),
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
                    builder: (context) => const Pace(), // Go to 'Pace' page
                  ));
                },
                child: const Text(
                  "Get Started",
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