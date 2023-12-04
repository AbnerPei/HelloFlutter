import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Container(
        color: Colors.red,
        child: Icon(
          Icons.add,
          size: 40,
        ),
        padding: EdgeInsets.all(150),
        margin: EdgeInsets.all(20),
        height: 200,
      )
    );
  }
}


