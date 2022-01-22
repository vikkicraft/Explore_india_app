import 'dart:convert';
class PageItem{
  static  List<PageDataModel> item = [
    
  ];
}


class PageDataModel {
  String id;
  String image;
  String title;
  String destination;
  String description;
  
  PageDataModel({
    required this.id,
    required this.image,
    required this.title,
    required this.destination,
    required this.description,
  });



  PageDataModel copyWith({
    String? id,
    String? image,
    String? title,
    String? destination,
    String? description,
  }) {
    return PageDataModel(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      destination: destination ?? this.destination,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'destination': destination,
      'description': description,
    };
  }

  factory PageDataModel.fromMap(Map<String, dynamic> map) {
    return PageDataModel(
      id: map['id'] ?? '',
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      destination: map['destination'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PageDataModel.fromJson(String source) => PageDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PageDataModel(id: $id, image: $image, title: $title, destination: $destination, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PageDataModel &&
      other.id == id &&
      other.image == image &&
      other.title == title &&
      other.destination == destination &&
      other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      image.hashCode ^
      title.hashCode ^
      destination.hashCode ^
      description.hashCode;
  }
}
