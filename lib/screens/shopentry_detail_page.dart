import 'package:flutter/material.dart';
import 'package:pbp_store_mobile/models/shop_entry.dart';

class ShopEntryDetailsPage extends StatelessWidget {
  final ShopEntry product;

  const ShopEntryDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Price: \$${product.fields.price}",
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Sold: ${product.fields.sold}",
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Rating: ${product.fields.rating}",
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Description:",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.fields.description,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
