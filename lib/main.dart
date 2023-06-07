import "package:flutter/material.dart";

void main(){
  runApp(const MaterialApp(
    home:MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Title(color: Colors.red, child:const Text("demo"))]),
    );
  }
}