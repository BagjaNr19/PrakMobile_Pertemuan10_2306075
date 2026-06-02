import 'dart:convert';

class ProductModel {
  final String id;
  final String name;
  final String description;
  final int price;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? description,
    int? price,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'description': description, 'price': price};
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? DateTime.now().millisecondsSinceEpoch.toString(),
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] ?? 0,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory ProductModel.fromJson(String source) {
    return ProductModel.fromMap(jsonDecode(source));
  }
}
