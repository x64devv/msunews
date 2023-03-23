import 'package:flutter/material.dart';

class Classified {
  int id;
  String title;
  int postedBy;
  int dateAdded;
  String adBody;

  Classified({
    this.id = 0,
    required this.title,
    required this.postedBy,
    required this.adBody,
    this.dateAdded = 0,
  });

  factory Classified.fromJson(Map<String, dynamic> adJSON) {
    return Classified(
        id: adJSON['id'],
        title: adJSON['title'],
        postedBy: adJSON['postedBy'],
        dateAdded: adJSON['dateAdded'],
        adBody: adJSON['body'],);
  }
}
