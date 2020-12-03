import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tree_finder/utils/generateRandomId.dart';

import 'utils/mapping.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  GoogleMapController mapController;
  Set<Marker> _markers = {};
  List json = [0, 1, 2, 3, 4, 5];
  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    List getCoords = await getPosition();
    String randomId = await generateRandomId(json);
    LatLng coords = LatLng(getCoords[0], getCoords[1]);
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(randomId),
        position: coords,
      ));
    });
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: getPosition(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          LatLng coords = LatLng(snapshot.data[0], snapshot.data[1]);

          return GoogleMap(
            markers: _markers,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: coords,
              zoom: 11.0,
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      });
}
