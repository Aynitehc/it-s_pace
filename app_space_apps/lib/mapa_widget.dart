import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; 
import 'slidesss.dart';
import 'user_page.dart';

class TabMap extends StatefulWidget {
  const TabMap({super.key}); 
  @override
  State<TabMap> createState() => MapSampleState();
}

class MapSampleState extends State<TabMap> {
  GoogleMapController? _controller;
  final Set<Marker> _markers = {};

  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(-12.001998, -81.486852), 
    zoom: 5.0,
  );

  @override
  void initState() {
    super.initState();
    _addBadgeMarker();
  }

  void _addBadgeMarker() {
    const LatLng pos1 = LatLng( -18.922641, -74.405147);
    const LatLng pos2 = LatLng( -12.101276, -79.791965);
    const LatLng pos3 = LatLng(  -6.128043, -82.972488);
    _markers.add(
      Marker(
        markerId: const MarkerId('mark1'),
        position: pos1,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange), 
        infoWindow: const InfoWindow(
          title: 'Pythoplancton / Clorophile',  
          snippet: '260.87 mg m3 / 5.47 mg m3',
        ),
      ),
    );
    _markers.add(
      Marker(
        markerId: const MarkerId('mark2'),
        position: pos2,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange), 
        infoWindow: const InfoWindow(
          title: 'Pythoplancton / Clorophile',  
          snippet: '220.28 mg m3 / 6.34 mg m3',
        ),
      ),
    );
    _markers.add(
      Marker(
        markerId: const MarkerId('mark3'),
        position: pos3,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange), 
        infoWindow: const InfoWindow(
          title: 'Pythoplancton / Clorophile',  
          snippet: '312.67 mg m3 / 7.24 mg m3',
        ),
      ),
    );
  }
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
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'SFPro_Black',
                fontSize: 40.0,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.2),
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
                        builder: (context) => const Slidesss()));
              },
              child: const Text(
                'Back',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'SFPro_Black',
                  fontSize: 15.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
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
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller = controller; 
        },
        markers: _markers,
      ),
    );
  }
}