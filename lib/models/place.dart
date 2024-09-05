import 'package:uuid/uuid.dart';
import 'dart:io';

const uuid = Uuid();

class PlaceLocation {
  const PlaceLocation(
      {required this.latitude, required this.longitude, required this.address});

  final double latitude;
  final double longitude;
  final String address;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id,
  }) : id = id ?? uuid.v4();
  //here we get an id(it comes from sqflite database) and optional and store it in id if received id is not null...if is null?? use uuid.v4()

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}
