import 'package:flutter/material.dart';
import 'package:flutter_playground/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          elevation: 0,
          title: const Text("Home page"),
          centerTitle: false,
          actions: const <Widget>[Icon(Icons.location_on_outlined)],
        ),
        body: ListView(children: mockUsersFromServer()));
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset('assets/temp/main_avatar.png', width: 40, height: 40),
        const SizedBox(width: 10),
        const Text("List item")
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
