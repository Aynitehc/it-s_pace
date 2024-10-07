import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_animate/flutter_animate.dart';
import 'user_page.dart';
import 'juego.dart';
import 'slidesss.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  double _opacity = 0.0; 
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _startFadeSequence();
  }

  void _startFadeSequence() async {
    await Future.delayed(const Duration(seconds: 8));
    if (!mounted) return;

    setState(() {
      _opacity = 1.0;
    });
    await Future.delayed(const Duration(seconds: 2)); 
    if (!mounted) return;
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    setState(() {
      _opacity = 0.0;
    });

    await Future.delayed(const Duration(seconds: 2));  
    if (!mounted) return;
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    _startFadeSequence();  
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/home.gif',
            fit: BoxFit.cover, 
            isAntiAlias: true,
          ).animate(onPlay: (controller) => controller.repeat()),
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
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        const Text(
                          'Home',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'SFPro_Black',
                            fontSize: 40.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.5),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(49, 157, 153, 153),
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(
                          color: Colors.white, 
                          width: 2, 
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const Juego()));
                            },
                            child: const Text(
                              "Arcade 🕹️",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'SFPro_Medium',
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            color: Colors.white,  
                            thickness: 2, 
                            width: 20, 
                            indent: 10,  
                            endIndent: 10,   
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const Slidesss()));
                            },
                            child: const Text(
                              "Streak🔥",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'SFPro_Medium',
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    AnimatedOpacity(
                      opacity: _opacity,
                      duration: const Duration(seconds: 2),
                      child:  Image.asset(
                        'assets/speech_bub.png',
                        height: MediaQuery.of(context).size.height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                   
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Slidesss()));
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Explore    ",
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
      ],
    );
  }
}