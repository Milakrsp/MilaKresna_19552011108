import 'package:flutter/material.dart';

class DasboarPage extends StatefulWidget {
  const DasboarPage({ Key? key }) : super(key: key);

  @override
  _DasboarPageState createState() => _DasboarPageState();
}

class _DasboarPageState extends State<DasboarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          'Dasboard Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}