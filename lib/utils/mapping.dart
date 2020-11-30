import 'package:geolocator/geolocator.dart';
//Aqui ficam as coisas relacionadas à geolocalização

//Função que pega os dados de longitude e latitude do celular em uma lista = [latitude, longitude]
getPosition() async {
  List coordinates = [];
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  coordinates.add(position.latitude);
  coordinates.add(position.longitude);
  print(coordinates);
  return coordinates;
}
