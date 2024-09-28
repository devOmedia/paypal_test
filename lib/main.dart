import 'package:flutter/material.dart';
import 'package:paypal_test/paypal_screen.dart';

void main() {
  runApp(const PaypalPaymentDemo());
}

class PaypalPaymentDemo extends StatelessWidget {
  const PaypalPaymentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PaypalPaymentDemp',
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const PaypalScreen()));
              },
              child: const Text('Pay with paypal'),
            ),
          ),
        );
      }),
    );
  }
}
