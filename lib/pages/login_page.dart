import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/home_page.dart';
import 'package:flutter_playground/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        backgroundColor: Colors.greenAccent,
        drawer: Container(width: 400, height: 400, color: Colors.blue[900]),
        body: SingleChildScrollView(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(children: <Widget>[
                    const Text(
                      "Hello, welcome back!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    const Text("Login to continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'user name',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'password',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            if (kDebugMode) {
                              print('forgot button clicked');
                            }
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          child: const Text('Forgot password ?')),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            // option 1
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return MainPage();
                              },
                            ));

                            /* option 2 
                            Navigator.of(context).pushNamed('/home'); 
                            */

                            /* option 3 
                            Navigator.of(context).pushReplacementNamed('/home'); 
                            */
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.black),
                          child: const Text("Login")),
                    ),
                    const SizedBox(height: 12),
                    const Text("Or sign in with"),
                    const SizedBox(height: 12),
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
                            const Text("Login with facebook",
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'Agbalumo'))
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have account ?"),
                        TextButton(
                            onPressed: () {
                              if (kDebugMode) {
                                print("sign up button clicked");
                              }
                            },
                            child: const Text("Sign-up button"))
                      ],
                    )
                  ]))),
        ));
  }
}
