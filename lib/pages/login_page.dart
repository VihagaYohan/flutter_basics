import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        backgroundColor: Colors.greenAccent,
        drawer: Container(width: 400, height: 400, color: Colors.blue[900]),
        body: Column(children: <Widget>[
          const Text("Hello, welcome back!"),
          const Text("Login to continue"),
          const TextField(
            decoration: InputDecoration(hintText: 'user name'),
          ),
          const TextField(
            decoration: InputDecoration(hintText: 'password'),
          ),
          TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print('forgot button clicked');
                }
              },
              child: const Text('Forgot password ?')),
          ElevatedButton(
              onPressed: () {
                print('login button clicked');
              },
              child: const Text("Login")),
          const Text("Or sign in with"),
          ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print('google button clicked');
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/main_avatar.png',
                      width: 25, height: 25),
                  const Text('Login with google')
                ],
              )),
          ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print("facebook button clicked");
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/main_avatar.png",
                      width: 25, height: 25),
                  const Text("Login with facebook")
                ],
              )), 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text("Don't have account ?"),
                TextButton(onPressed: () {
                  if(kDebugMode) {
                    print("sign up button clicked");
                  }
                }, child: const Text("Sign-up button"))
              ],)
        ]));
  }

}