import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  AppBar appBar () {
    return AppBar(
      title: Text('Animações'),
    );
  }

  Widget body () {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('Apertou!');

          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => HeroPage()
          ));

          // setState(() {
          //   click = !click;
          // });
        },
        child: Hero(
            tag: 'heroTag',
            child: AnimatedContainer(
            width: 100,
            height: click ? 400 : 100,
            color: click ? Colors.blue : Colors.red, 
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

   AppBar appBar () {
    return AppBar(
      title: Text('Animações - Hero'),
    );
  }

  double opacityLevel = 1.0;

  Widget body () {
    return Center(
      child: Hero(
          tag: 'heroTag',
          child: GestureDetector(
              onTap: () {
                setState(() {
                  if (opacityLevel < 0.5)
                    opacityLevel = 1.0;
                  else
                    opacityLevel = 0.3;
                });
              },
              child: AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: opacityLevel,
              child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
        ),
            ),
          ),
      ),
    );
  }
}