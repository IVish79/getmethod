import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Secondpage(),
  ));
}

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Container(
            height: 200,
            width: 200,
            child: Text("Welcome"),
          ))
        ],
      ),
    );
  }
}
