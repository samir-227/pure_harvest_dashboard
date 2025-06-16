import 'package:fruit_hub_dashboard/features/orders/domain/entities/data/models/order_product_entity.dart';

class OrderProductModel {
  final String name;
  final String code;
  final String imageUrl;
  final double price;
  final int quantity;

  OrderProductModel({
    required this.name,
    required this.code,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });
  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
      name: json['name'],
      code: json['code'],
      imageUrl: json['image'],
      price: double.parse(json['price']),
      quantity: int.parse(json['quantity']), // json['quantity'],
    );
  }
  toJson() {
    return {
      'name': name,
      'code': code,
      'image': imageUrl,
      'price': price,
      'quantity': quantity,
    };
  }

  OrderProductEntity toEntity() {
    return OrderProductEntity(
      name: name,
      code: code,
      imageUrl: imageUrl,
      price: price,
      quantity: quantity,
    );
  }
}
