import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // _trackme();
                _getLocation();
              },
              child: Text("Track Me"))
        ],
      ),
    );
  }

// with timer
  Future<void> _trackme() async {
    //it will call location api every 3 seconds
    Timer.periodic(Duration(seconds: 3), (timer) async {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      print("Latitude: ${position.latitude}");
      print("Longitude: ${position.longitude}");
    });
  }

  //without timer
  Future<void> _getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    print("Latitude: ${position.latitude}");
    print("Longitude: ${position.longitude}");
  }
}
