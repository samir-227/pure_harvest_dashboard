import 'package:fruit_hub_dashboard/core/enums/order_enum.dart';

import 'order_product_entity.dart';
import 'shipping_address_entity.dart';

class OrderEntity {
  final double totalPrice;
  final String uid;
  final String orderId;
  final ShippingAddressEntity shippingAddressModel;
  final List<OrderProductEntity> orderProducts;
  final String paymentMethod;
  final OrderStatusEnum status;
  OrderEntity(
      {required this.totalPrice,
      required this.uid,
      required this.orderId,
      required this.status,
      required this.shippingAddressModel,
      required this.orderProducts,
      required this.paymentMethod});
}

// payment method
