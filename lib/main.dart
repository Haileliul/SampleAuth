import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
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
                child: Text("Login"),
              ),
              TextFormField(
                controller: _EmailController,
                decoration: InputDecoration(
                  labelText: "Enter your Email",
                  hintText: "haile@gmail.com",
                  icon: Icon(Icons.email),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        _EmailController.clear();
                      });
                    },
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
                  child: ElevatedButton(onPressed: () {}, child: Text("Login")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
