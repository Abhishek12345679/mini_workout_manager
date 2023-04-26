// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class Workout {
  final String name;
  final String imageUrl;
  final int noOfSets;
  final int noOfReps;
  final String description;

  const Workout({
    required this.name,
    required this.imageUrl,
    required this.noOfSets,
    required this.noOfReps,
    required this.description,
  });

  Workout copyWith({
    String? name,
    String? imageUrl,
    int? noOfSets,
    int? noOfReps,
    String? description,
  }) {
    return Workout(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      noOfSets: noOfSets ?? this.noOfSets,
      noOfReps: noOfReps ?? this.noOfReps,
      description: description ?? this.description,
    );
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'name': name,
  //     'imageUrl': imageUrl,
  //     'noOfSets': noOfSets,
  //     'noOfReps': noOfReps,
  //     'description': description,
  //   };
  // }

  // factory Workout.fromMap(Map<String, dynamic> map) {
  //   return Workout(
  //     name: map['name'] as String,
  //     imageUrl: map['imageUrl'] as String,
  //     noOfSets: map['noOfSets'] as int,
  //     noOfReps: map['noOfReps'] as int,
  //     description: map['description'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Workout.fromJson(String source) => Workout.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Workout(name: $name, imageUrl: $imageUrl, noOfSets: $noOfSets, noOfReps: $noOfReps, description: $description)';
  }

  @override
  bool operator ==(covariant Workout other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.imageUrl == imageUrl &&
        other.noOfSets == noOfSets &&
        other.noOfReps == noOfReps &&
        other.description == description;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        imageUrl.hashCode ^
        noOfSets.hashCode ^
        noOfReps.hashCode ^
        description.hashCode;
  }
}
