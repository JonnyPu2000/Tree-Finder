import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tree_finder/utils/mapping.dart';

Widget mapWidget() {
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  return FutureBuilder(
    builder: (context, projectSnap) {
      if (projectSnap.connectionState == ConnectionState.none &&
          projectSnap.hasData == null) {
        //print('project snapshot data is: ${projectSnap.data}');
        return Container();
      }
      Future<List> coords = getPosition();
      LatLng coordsFinal = LatLng(20.0, -20.0);
      print(coords);
      return GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: coordsFinal,
          zoom: 11.0,
        ),
      );
    },
    future: getPosition(),
  );
}
