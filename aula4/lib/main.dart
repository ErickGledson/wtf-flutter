import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: minhaAppBar('Listas em Flutter'),
      body: minhaListViewSeparador(),
    );
  }

  AppBar minhaAppBar(text) => AppBar(
        title: Text(text),
      );

  Widget minhaListViewPadrao() {
    return ListView(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.blue,
        )
      ],
    );
  }

  Widget minhaListViewBuilder() {

    var estados = ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'];

    return ListView.builder(
      itemCount: estados.length,
      itemBuilder: (_, index) {
        var estado = estados[index];

        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Text('${estado}'),
          ),
          title: Text('Vamos visitar'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            
          },
        );
      },
    );
  }

  Widget minhaListViewSeparador() {
     var estados = ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'];

    return ListView.separated(
      itemCount: estados.length,
      itemBuilder: (_, index) {
         var estado = estados[index];

        return ListTile(
          title: Text('${estado}'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        );
      }, 
      separatorBuilder: (_, index) => Divider(thickness: 5.0, color: Colors.black,), 
    );
  }
}
