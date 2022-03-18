import 'package:flutter/material.dart';
import 'package:flutter_course_excercise/location_list.dart';
import './location_detail.dart';
import 'mocks/mock_location.dart';
import 'models/location.dart';
import 'location_list.dart';

void main() {
  final mockLocations = MockLocation.fetchAll();

  return runApp(
    MaterialApp(
      home: LocationList(
        (mockLocations),
      ),
    ),
  );
}
