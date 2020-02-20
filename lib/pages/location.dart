import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MyLocation extends StatefulWidget {
  @override
  _MyLocationState createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  Completer<GoogleMapController>_controller=Completer();
  static const LatLng _center=const LatLng(45.521563, -122.677433);
  final Set<Marker>_markers={};
  LatLng _lastMapPosition=_center;
  MapType _currentMapType=MapType.normal;
  _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
  }
  _onCameraMove(CameraPosition position){
    _lastMapPosition=position.target;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Maps"),
        ),
        body:Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(target: _center,
              zoom:11.0,
              ),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
          ],
        ),
      ),
    );

  }

}

