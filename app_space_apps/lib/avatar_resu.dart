import 'package:flutter/material.dart';
import 'home.dart';

class AvatarResu extends StatefulWidget {
  const AvatarResu({super.key});
  @override
  _AvatarResuState createState() => _AvatarResuState();
}

class _AvatarResuState extends State<AvatarResu> {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPopup(context);
    });
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.all(0),
          title: const Text(
            'Want to join a class?',
            style: TextStyle(
              color: Color.fromARGB(255, 13, 33, 161),
              fontFamily: 'SFPro_Bold',
              fontSize: 20.0,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your class code here:',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
          padding: EdgeInsets.symmetric(vertical: 20.0), // Add vertical padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.width * 0.5),
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  'assets/pfp_usuario.jpg',
                  height: MediaQuery.of(context).size.width * 0.8,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.25),
              const Text(
                'Your inner plankton is',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Bold',
                  fontSize: 30,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.2),
              const Text(
                'Zooxanthellae',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 219, 234),
                  fontFamily: 'SFPro_Bold',
                  fontSize: 40.0,
                  letterSpacing: 3,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.2),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(145, 51, 83, 96), 
                  borderRadius: BorderRadius.circular(15.0), 
                ),
                child: Center(
                  widthFactor: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    '✅ Resilient and symbiotic phytoplankton',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'SFPro_Regular',
                      fontSize: 25.0,
                      letterSpacing: 2,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(145, 51, 83, 96),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  widthFactor: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    '✅ Provide nutrients to coral reefs',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'SFPro_Regular',
                      fontSize: 25.0,
                      letterSpacing: 2,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(145, 51, 83, 96), 
                  borderRadius: BorderRadius.circular(15.0), 
                ),
                child: Center(
                  widthFactor: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    '✅ Play a critical role in coral health and adaptation',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'SFPro_Regular',
                      fontSize: 25.0,
                      letterSpacing: 2,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(145, 51, 83, 96),
                  borderRadius: BorderRadius.circular(15.0), 
                ),
                child: Center( 
                  widthFactor: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    '✅ Reflect qualities of strength, \nbravery, and forward-thinking',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'SFPro_Regular',
                      fontSize: 22,
                      letterSpacing: 2,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
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
                    builder: (context) => const Home(),
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
              SizedBox(height: MediaQuery.of(context).size.width * 0.2),
            ],
          ),
        ),
      ),
    );
  }
}