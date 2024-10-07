import 'package:flutter/material.dart';
import 'avatar1.dart';

class Pace extends StatelessWidget {
  const Pace({super.key});
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
            //width: MediaQuery.of(context).size.width * 0.5,
            children: [
              SizedBox(height: MediaQuery.of(context).size.width *0.08 ),
              const Text('Powered by',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Regular', 
                  fontSize: 40.0,
                  letterSpacing: 4,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width *0.1 ),
              Image.asset('assets/pace.png',
                height: MediaQuery.of(context).size.height *0.2,),
              const SizedBox(height:50.0),
              const Divider(
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2.0,
                indent: 60.0,
                endIndent: 60.0,
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: MediaQuery.of(context).size.width *0.7,
                child:  Text('PACE collects data on the ocean, atmosphere, and ecosystems to better understand their interactions and benefit the economy and society.',
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
                    builder: (context) => const Avatar1(),// manda a la primera de avatar
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
