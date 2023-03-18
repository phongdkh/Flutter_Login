import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg/logo.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: [
              const SizedBox(height: 100.0),
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 43),
              Theme(
                data: ThemeData(
                  primaryColor: Colors.red,
                  primaryColorDark: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      hintText: 'Email',
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      prefixText: ' ',
                      suffixIcon: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      suffixStyle: TextStyle(color: Colors.green)),
                ),
              ),
              const SizedBox(height: 33),
              Theme(
                data: ThemeData(
                  primaryColor: Colors.red,
                  primaryColorDark: Colors.red,
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      hintText: 'PassWord',
                      labelText: 'PassWord',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      ),
                      suffixStyle: TextStyle(color: Colors.green)),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[700],
                  border: Border.all(color: Colors.deepPurple),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: Offset(1, 3),
                    ),
                  ],
                ),
                child: const Text("Login",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              const SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    label: const Text("Facebook"),
                    backgroundColor: Colors.blue,
                    icon: const Icon(
                      Icons.facebook,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton.extended(
                    label: const Text("Twitter"),
                    backgroundColor: Colors.blue,
                    icon: const Icon(Icons.ac_unit),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have account?"),
                  const SizedBox(width: 20),
                  Text("Sign up", style: TextStyle(color: Colors.indigo[400]))
                ],
              )
            ],
          ),
          const Positioned(
              left: 0,
              right: 0,
              bottom: 350.0,
              child: Align(
                  alignment: Alignment.center,
                  child: Text("Forgot your password?",
                      style: TextStyle(color: Colors.white)))),
          const Positioned(
              left: 0,
              right: 0,
              bottom: 200,
              child: Align(
                  alignment: Alignment.center, child: Text("or connect with"))),
        ],
      ),
    );
  }
}
