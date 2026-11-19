import 'package:flutter/material.dart';

void main() {
  runApp(const MainFull());
}
class MainFull extends StatefulWidget{
  const MainFull({super.key});
   @override
  State<MainFull> createState() => _MainApp();
}
class _MainApp extends State<MainFull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Consulta CEP'),),
        body: Center(
          child: Text('Consulta cep'),
        ),
      ),
    );
  }
}
