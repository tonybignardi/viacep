import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainFull());
}
class MainFull extends StatefulWidget{
  const MainFull({super.key});
   @override
  State<MainFull> createState() => _MainApp();
}
class _MainApp extends State<MainFull> {
  TextEditingController _controller = TextEditingController();
  String _resultado = "";


    

    String url = "https://viacep.com.br/ws/"+_controller.text+"/json/";
    http.Response resposta = await http.get(Uri.parse(url));
    Map<String, dynamic> dados = jsonDecode(resposta.body);

    setState(() {
    _resultado = dados["logradouro"]+"\n"+dados["bairro"]+"\n"+
    dados["localidade"]+"\n"+dados["uf"];   
    });
    



  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Consulta CEP'),),
        body: Column(children: [Text('Informe o CEP'),
        TextField(controller: _controller,),
        ElevatedButton(child: Text('Buscar'),onPressed: _buscar,),
        Text('Local: $_resultado')],),
      ),
    );
  }
}
