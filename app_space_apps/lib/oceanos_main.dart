import 'package:flutter/material.dart';
import 'reefs.dart';
import 'user_page.dart';

class OceanosMain extends StatefulWidget {
  const OceanosMain({super.key});
  @override
  _OceanosMainState createState() => _OceanosMainState();
}

class _OceanosMainState extends State<OceanosMain> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                const Text(
                  'Oceans',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'SFPro_Black',
                    fontSize: 50.0,
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(145, 51, 83, 96),
                borderRadius: BorderRadius.circular(15.0), 
              ),
              child: Center( 
                widthFactor: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Coastal Beaches',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'SFPro_Regular',
                    fontSize: 38,
                    letterSpacing: 2,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Color.fromARGB(255, 33, 64, 77),
                padding: const EdgeInsets.fromLTRB(145,30,145,30),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const Reefs()));
              },
              child: const Text(
                "Reefs",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'SFPro_Medium',
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(145, 51, 83, 96),
                borderRadius: BorderRadius.circular(15.0), 
              ),
              child: Center( 
                widthFactor: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Open Ocean',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'SFPro_Regular',
                    fontSize: 38,
                    letterSpacing: 2,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}