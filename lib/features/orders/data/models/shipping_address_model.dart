import 'package:fruit_hub_dashboard/features/orders/domain/entities/data/models/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name;
  String? phone;
  String? address;
  String? city;
  String? email;

  ShippingAddressModel({
    this.name,
    this.phone,
    this.address,
    this.city,
    this.email,
  });

  @override
  String toString() {
    return '$address  $city';
  }

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    return ShippingAddressModel(
      name: json['name'],
      phone: json['phone'],
      address: json['address'],
      city: json['city'],
      email: json['email'],
    );
  }
  toJson() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'city': city,
      'email': email,
    };
  }

  toEntity() {
    return ShippingAddressEntity(
      name: name,
      phone: phone,
      address: address,
      city: city,
      email: email,
    );
  }
}
