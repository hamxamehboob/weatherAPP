
import 'package:geolocator/geolocator.dart';
String location = "0,0";

  Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
  return await Geolocator.getCurrentPosition();
}
Future<String> getcurrentlocation(String? latlong) async{
  if (latlong == null) {
    Position position = await determinePosition();
    location = "${position.latitude},${position.longitude}";
  } else {
    location = latlong;
  }
  return location;

}
  Future<void Function()> getcurrentPosistion() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("PERMISSION NOT GIVEN");
      LocationPermission asked = await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      location ="${currentPosition.latitude},${currentPosition.longitude}";
      print(location);
    }
    return getcurrentPosistion;
  }


