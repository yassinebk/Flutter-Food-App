import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../models/restaurent.dart';

class TextDescWithScore extends StatelessWidget {
  const TextDescWithScore({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('"${restaurant.desc}"    ', style: const TextStyle(fontSize: 16)),
        Row(
          children: [
            const Icon(Icons.star_outline_outlined, color: kPrimaryColor),
            Text('${restaurant.score}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(width: 16),
          ],
        )
      ],
    );
  }
}
