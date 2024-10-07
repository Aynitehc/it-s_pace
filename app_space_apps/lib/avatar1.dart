import 'package:flutter/material.dart';
import 'avatar_quiz1.dart';

class Avatar1 extends StatelessWidget {
  const Avatar1({super.key});
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
              const Text('Customize your avatar!',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Bold', 
                  fontSize: 25.0,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width *0.1 ),
              ClipRRect(
                borderRadius: BorderRadius.circular(60), // Set the desired radius
                child: Image.asset(
                  'assets/usuarioVacio.png',
                  height: MediaQuery.of(context).size.width ,
                  fit: BoxFit.cover, // Adjusts the image to cover the whole area
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.width *0.2 ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 232, 179, 73),
                  padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
                  //alignment: AlignmentDirectional.bottomEnd
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0), 
                  ),
                ),
                 onPressed: () {
                  // manda a la pagina de inicio
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AvatarQuiz1(),// manda al quiz de avatar
                  ));
                },
                child: const Text("Next",
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
