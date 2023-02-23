// To parse this JSON data, do
//
//     final shan = shanFromJson(jsonString);

import 'dart:convert';

List<Shan> shanFromJson(String str) => List<Shan>.from(json.decode(str).map((x) => Shan.fromJson(x)));

String shanToJson(List<Shan> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Shan {
    Shan({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    int userId;
    int id;
    String title;
    bool completed;

    factory Shan.fromJson(Map<String, dynamic> json) => Shan(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}
