import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class PaypalScreen extends StatelessWidget {
  const PaypalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PaypalCheckoutView(
      sandboxMode: true,
      clientId:
          "AT5UOG0cCFAmPD4xybTaNYmTab4yvzWaReNlzXtOVJXNECHo-cP7MG0ns_AyecGmxAeJ5mOvM7NQs23i",
      secretKey:
          "EIVIWSs6tT8OuH-tBITcnK7mq5ImeHj8OOpIRJqpGkxK499EBWqfyfRyrKCiah4fL4FXh3GdFkfJJYMM",
      transactions: const [
        {
          "amount": {
            "total": '100',
            "currency": "USD",
            "details": {
              "subtotal": '100',
              "shipping": '0',
              "shipping_discount": 0
            }
          },
          "description": "The payment transaction description.",
          // "payment_options": {
          //   "allowed_payment_method":
          //       "INSTANT_FUNDING_SOURCE"
          // },
          "item_list": {
            "items": [
              {
                "name": "Apple",
                "quantity": 4,
                "price": '10',
                "currency": "USD"
              },
              {
                "name": "Pineapple",
                "quantity": 5,
                "price": '12',
                "currency": "USD"
              }
            ],

            // Optional
            //   "shipping_address": {
            //     "recipient_name": "Tharwat samy",
            //     "line1": "tharwat",
            //     "line2": "",
            //     "city": "tharwat",
            //     "country_code": "EG",
            //     "postal_code": "25025",
            //     "phone": "+00000000",
            //     "state": "ALex"
            //  },
          }
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        log("onSuccess: $params");
        Navigator.pop(context);
      },
      onError: (error) {
        log("onError: $error");
        Navigator.pop(context);
      },
      onCancel: () {
        print('cancelled:');
        Navigator.pop(context);
      },
    );
  }
}
