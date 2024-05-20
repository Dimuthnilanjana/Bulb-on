import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool b1 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFFe5bdc4),
                title: const Text("IOT App 05")),
            body: Center(
              child: Column(
                children: [
                  b1? Icon(
                          Icons.lightbulb,
                          size: 100,
                          color: Color.fromARGB(255, 0, 255, 38)
                        )
                      : const Icon(
                          Icons.lightbulb,
                          size: 100,
                          color: Color.fromARGB(255, 255, 22, 22)
                        ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          b1 = !b1;
                        });
                      },
                      child:b1? const Text("Turn ON"): const Text("Turn OFF"))
                ],
                           ),
                

            //Column  ();             
            )));
  }
}