# Flutter Live Location Tracking App | Android - IOS - WEB - MACOS - LINUX - WINDOWS

This is sample flutter application to get the live location of user

## Dependencies

- [geolocator: ^9.0.2](https://pub.dev/packages/geolocator)

```
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
  ```
