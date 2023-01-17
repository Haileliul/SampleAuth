import 'package:demo2/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

void main() => runApp(signin());

class signin extends StatelessWidget {
  signin({super.key});
  final _EmailController = TextEditingController();
  final _Passwordontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("this the sample login form"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Sign Up "),
              ),
              TextFormField(
                controller: _EmailController,
                decoration: InputDecoration(
                  labelText: "Enter your Email",
                  hintText: "haile@gmail.com",
                  icon: Icon(Icons.email),
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
              TextFormField(
                controller: _Passwordontroller,
                decoration: InputDecoration(
                  labelText: "Enter your Password",
                  icon: Icon(Icons.key),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: _EmailController.text,
                                    password: _Passwordontroller.text)
                                .then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home()));
                              print("created new Account");
                            }).onError((error, stackTrace) {
                              print("Error ${error.toString()}");
                            });
                          },
                          child: Text("Sign Up")),
                      Text(" have an account ?"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Main(),
                              ));
                        },
                        child: Text("Login"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
