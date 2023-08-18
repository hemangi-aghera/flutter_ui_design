import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  String img;
   ItemProduct(this.img,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/${img}.jpg',
              fit: BoxFit.cover,
              height: 120,
              width: 100,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Here is Product Title',
                  style: Theme.of(context).textTheme.titleLarge,

                ),
                const SizedBox(height: 5),
                Text(
                  'Here is the description of this projrct, kindly read it carefully. We offer 10% discount on this product.',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(height: 1.5),
                ),
                const SizedBox(height: 5),
                Text(
                  'Rs.500 PRK',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).primaryColor, letterSpacing: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
