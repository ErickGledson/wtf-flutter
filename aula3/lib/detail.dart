import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String nome;
  final int idade;

  Detail({Key key, this.nome, this.idade}) : super();

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var pessoa = this.widget;

    return Scaffold(
      appBar: AppBar(title: Text('Tela de detalhes')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
                text: 'Seus dados \n',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  meuTextSpan('nome: ${pessoa.nome} \n'),
                  meuTextSpan('idade: ${pessoa.idade}'),
                ]),
          )
        ],
      )),
    );
  }

  TextSpan meuTextSpan(texto) {
    return TextSpan(
        text: texto,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.italic,
        ));
  }
}
