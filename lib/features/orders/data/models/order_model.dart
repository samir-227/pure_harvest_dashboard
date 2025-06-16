import 'package:fruit_hub_dashboard/features/orders/data/models/shipping_address_model.dart';

import '../../../../core/enums/order_enum.dart';
import '../../domain/entities/data/models/order_entity.dart';
import 'order_product_model.dart';

class OrderModel {
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final double totalPrice;
  final String uid;
  final String paymentMethod;
  final String? status;
  final String orderId;

  OrderModel({
    required this.status,
    required this.orderId,
    required this.shippingAddressModel,
    required this.orderProducts,
    required this.totalPrice,
    required this.uid,
    required this.paymentMethod,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        totalPrice: json['totalPrice'],
        uid: json['uid'],
        status: json['status'],
        orderId: json['orderId'],
        shippingAddressModel:
            ShippingAddressModel.fromJson(json['shippingAddress']),
        orderProducts: List<OrderProductModel>.from(
            json['orderProducts'].map((e) => OrderProductModel.fromJson(e))),
        paymentMethod: json['paymentMethod'],
      );
  toJson() => {
        'totalPrice': totalPrice,
        'uid': uid,
        'status': 'pending',
        'date': DateTime.now().toString(),
        'shippingAddress': shippingAddressModel.toJson(),
        'orderProducts': orderProducts.map((e) => e.toJson()).toList(),
        'paymentMethod': paymentMethod,
      };

  toEntity() => OrderEntity(
        orderId: orderId,
        totalPrice: totalPrice,
        status: fetchEnum(),
        uid: uid,
        shippingAddressModel: shippingAddressModel.toEntity(),
        orderProducts: orderProducts.map((e) => e.toEntity()).toList(),
        paymentMethod: paymentMethod,
      );

  OrderStatusEnum fetchEnum() {
    return OrderStatusEnum.values.firstWhere((e) {
      var enumStatus = e.name.toString();
      return enumStatus == (status ?? 'pending');
    });
  }
}

// payment method
