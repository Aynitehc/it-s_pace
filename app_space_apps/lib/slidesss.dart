import 'package:flutter/material.dart';
import 'user_page.dart';
import 'oceanos_main.dart';
import 'mapa_widget.dart';

class Slidesss extends StatelessWidget {
  const Slidesss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            const Text(
              'Explore',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'SFPro_Black',
                fontSize: 40.0,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.4),
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
      ),
      body: const SwappableTabs(),
    );
  }
}

class SwappableTabs extends StatelessWidget {
  const SwappableTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: [
        Stack( //oceanoooo
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/ocea.jpg',
                fit: BoxFit.cover, 
                isAntiAlias: true,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent, 
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20,0),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 157, 153, 153),
                            borderRadius: BorderRadius.circular(55.0),
                            border: Border.all(
                              color: Colors.white, 
                              width: 2, 
                            ),
                          ),
                          child: const Text(
                            "Oceans",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Bold',
                              fontSize: 65.0,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *0.7,
                          child:  Text('“Some phytoplankton species, like Phaeocystis, can create foam on the beach after a big storm."🏖️☁️',
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Regular', 
                              fontSize: 23,
                              decoration: TextDecoration.none,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromARGB(255, 246, 196, 95),
                          padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const OceanosMain()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Start ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'SFPro_Bold',
                                  fontSize: 30.0,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),

        Stack( // planktonnnn
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/plan.png',
                fit: BoxFit.cover, 
                isAntiAlias: true,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent, 
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20,0),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 157, 153, 153),
                            borderRadius: BorderRadius.circular(55.0),
                            border: Border.all(
                              color: Colors.white, 
                              width: 2, 
                            ),
                          ),
                          child: const Text(
                            "Plankton",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Bold',
                              fontSize: 65.0,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *0.7,
                          child:  Text('“Did you know that phytoplankton produce up to 50% of the oxygen we breathe 🌎💨”',
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Regular', 
                              fontSize: 23,
                              decoration: TextDecoration.none,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:const Color.fromARGB(255, 246, 196, 95),
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Coming soon...",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'SFPro_Bold',
                                    fontSize: 25.0,
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
        Stack( //aerosoleeess
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/aero.jpg',
                fit: BoxFit.cover, 
                isAntiAlias: true,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent, 
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20,0),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 157, 153, 153),
                            borderRadius: BorderRadius.circular(55.0),
                            border: Border.all(
                              color: Colors.white, 
                              width: 2, 
                            ),
                          ),
                          child: const Text(
                            "Aerosol",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Bold',
                              fontSize: 65.0,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *0.7,
                          child:  Text('“Aerosols in the atmosphere, which PACE also monitors, can influence cloud formation and affect the climate. ☁️🌍”',
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Regular', 
                              fontSize: 23,
                              decoration: TextDecoration.none,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:const Color.fromARGB(255, 246, 196, 95),
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Coming soon...",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'SFPro_Bold',
                                    fontSize: 25.0,
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
        Stack(//mapaaaaa
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/map.png',
                fit: BoxFit.cover, 
                isAntiAlias: true,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent, 
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20,0),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.55,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(49, 157, 153, 153),
                            borderRadius: BorderRadius.circular(55.0),
                            border: Border.all(
                              color: Colors.white, 
                              width: 2, 
                            ),
                          ),
                          child: const Text(
                            "Mapa",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Bold',
                              fontSize: 65.0,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *0.7,
                          child:  Text('Engage in a interactive map, where you can see the locations where plankton is most present.',
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'SFPro_Regular', 
                              fontSize: 23,
                              decoration: TextDecoration.none,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height *0.15,),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromARGB(255, 246, 196, 95),
                          padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const TabMap()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Start ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'SFPro_Bold',
                                  fontSize: 30.0,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
      ],
    );
  }
}

class TabContent extends StatelessWidget {
  final Color color;
  final String text;

  const TabContent({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}