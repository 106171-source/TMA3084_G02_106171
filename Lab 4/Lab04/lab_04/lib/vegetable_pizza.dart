import 'package:flutter/material.dart';

import 'order_summary.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Pizza'),
        backgroundColor: const Color.fromARGB(255, 201, 2, 115),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/VegetablePZ.jpg', width: 200),
            const Text(
              'Vegetable Pizza is a pizza with mixed '
              'vegetable mix on top of it.',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderSummaryScreen(),
                  ),
                );
              },
              child: const Text('View Order Summary'),
            ),
          ],
        ),
      ),
    );
  }
}
