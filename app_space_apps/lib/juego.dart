import 'package:flutter/material.dart';
import 'home.dart';

class Juego extends StatelessWidget {
  const Juego({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 13,33, 161),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height:160.0),
              const Text('juegoooooo !!!!',
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
                    builder: (context) => const Home(),// manda al quiz de avatar
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
