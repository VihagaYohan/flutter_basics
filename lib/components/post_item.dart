import 'package:flutter/material.dart';
import 'package:flutter_playground/styles/app_text.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/temp/main_avatar.png', width: 40, height: 40),
            const SizedBox(width: 10),
            const Text("List item", style: AppText.body1)
          ],
        ),
        // Image.asset('assets/temp/main_avater.png'),
        Text('post description', style: AppText.body2)
      ],
    );
  }
}
