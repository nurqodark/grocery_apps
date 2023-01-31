// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:grocery_app/model/data.dart';
import 'package:grocery_app/view/product_detail.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(product: product),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.image,
              child: SizedBox(
                width: 150,
                child: Image.asset(product.image),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              'Rp ${product.price}',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 2.0,
            ),
            Text(
              'Rp ${product.quantity}',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Divider(
              height: 2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_shopping_cart,
                  size: 20,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Beli",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.remove_circle_outline,
                      size: 18.0,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                    ),
                    const Icon(
                      Icons.add_circle_outline,
                      size: 18.0,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
