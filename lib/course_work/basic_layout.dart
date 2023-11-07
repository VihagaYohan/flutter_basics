import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Image.asset('./assets/images/main_avatar.png'),
        const SizedBox(height: 30),
        const Text(
          'Welcome!',
          style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: 'Agbalumo',
              decoration: TextDecoration.none),
        ),
        const Text("Hello world",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none)),
      ],
    );
  }
}
