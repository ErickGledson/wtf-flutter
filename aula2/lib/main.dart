import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color _cor = Colors.black54;

  void mudaCor(cor) {
    setState(() {
      _cor = cor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WTF Flutter - Aula 2'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            nossoContainer('1', _cor),
            nossoContainer('2', _cor),
            nossoContainer('3', _cor),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                nossoBotao('Azul', Colors.blueAccent),
                nossoBotao('Vermelho', Colors.redAccent),
                nossoBotao('Laranja', Colors.deepOrangeAccent),
              ],
            ),            
          ],
        ),
      ),
    );
  }

  Widget nossoContainer(texto, cor) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cor,
      ),
      child: Text(
        '$texto',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget nossoBotao(texto, cor) {
    return Container(
      width: 100,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          mudaCor(cor);
        },
        color: cor,
        child: Text(
          '$texto',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
