import 'package:flutter/material.dart';
import 'package:login_flutter/pages/logic/logic_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Container(
              //   width: 200.0,
              //   height: 200.0,
              //   child: Image.asset("assets/images/logo.png"),
              //   //child: Image.network("https://cdn-icons-png.flaticon.com/512/6681/6681204.png")
              // ),
              // //const SizedBox(height: 10.0),
              // Container(
              //   child: const Padding(
              //     padding: EdgeInsets.all(10),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(),
              //         labelText: 'Email',
              //         //hintText: 'Email',
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: const Padding(
              //     padding: EdgeInsets.all(10),
              //     child: TextField(
              //       //obscureText: true,
              //       decoration: InputDecoration(
              //         labelText: 'Password',
              //         border: OutlineInputBorder(),
              //         //hintText: 'Password',
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(100.0), color: Colors.blue),
              //   height: 50.0,
              //   child: Center(
              //     child: Text(
              //         "Login",
              //         style: TextStyle(
              //           color: Colors.white,
              //         )),
              //   ),
              // ),
            ],
          )),
    );
  }
}
