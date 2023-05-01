import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Exercise {
  final String id;
  final String name;
  final String bodyPart;
  final String equipment;
  final String target;
  final String gifUrl;
  Exercise({
    required this.id,
    required this.name,
    required this.bodyPart,
    required this.equipment,
    required this.target,
    required this.gifUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'bodyPart': bodyPart,
      'equipment': equipment,
      'target': target,
      'gifUrl': gifUrl,
    };
  }

  factory Exercise.fromMap(Map<String, dynamic> map) {
    return Exercise(
      id: map['id'] as String,
      name: map['name'] as String,
      bodyPart: map['bodyPart'] as String,
      equipment: map['equipment'] as String,
      target: map['target'] as String,
      gifUrl: map['gifUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Exercise.fromJson(String source) =>
      Exercise.fromMap(json.decode(source) as Map<String, dynamic>);
}
