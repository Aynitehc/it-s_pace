import 'package:app_space_apps/ocea_quiz1.dart';
import 'package:flutter/material.dart';
import 'avatar1.dart';
import 'user_page.dart';

class Reefs extends StatelessWidget {
  const Reefs({super.key});
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
              SizedBox(height: MediaQuery.of(context).size.width *0.08 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  const Text(
                    'Reefs',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'SFPro_Black',
                      fontSize: 45.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.35),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const UserPage()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'assets/usuario_cir.png',
                        height: MediaQuery.of(context).size.height * 0.06,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width *0.25 ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.42,
                decoration: BoxDecoration(
                  color: Color.fromARGB(145, 51, 83, 96),
                  borderRadius: BorderRadius.circular(15.0), 
                ),
                child: Center( 
                  widthFactor: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height *0.05),
                      Text(
                        'Coral reefs are underwater structures formed by corals. They are habitats rich in biodiversity and highly sensitive to environmental changes.',
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'SFPro_Regular',
                          fontSize: 25,
                          letterSpacing: 2,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height *0.03 ),
                      const Divider(
                        color: Color.fromARGB(255, 255, 255, 255),
                        thickness: 2.0,
                        indent: 60.0,
                        endIndent: 60.0,
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width *0.7,
                        child:  Text('Let’s explore these colorful ecosystems! 🪸🐠🌊',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'SFPro_Thin', 
                            fontSize: 23,
                            decoration: TextDecoration.none,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ],
                  ) 
                ),
              ),
              const SizedBox(height:50.0),
              
              SizedBox(height: MediaQuery.of(context).size.height *0.05 ),
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
                    builder: (context) => const OceaQuiz1(),
                  ));
                },
                child: const Text("Start the Quiz",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'SFPro_Black', 
                    fontSize: 25.0,

                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.05),
            ],
          ),
        ],
      ),
    );
  }
}
