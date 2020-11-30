import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';

import 'utils/mapping.dart';

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MapController controller = new MapController();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('geolocation'),
      ),
      body: new FlutterMap(
        mapController: controller,
        options: new MapOptions(center: new LatLng(74, 89), minZoom: 5.0),
        layers: [
          new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
        ],
      ),
    );
  }
}
