import 'package:location/location.dart';

class LocationState {
  late double lat;
  late double lng;
  Location location = new Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  locateMe(onUpdate) async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    location.onLocationChanged.listen((res) {
      onUpdate(res);
    });
  }
}
