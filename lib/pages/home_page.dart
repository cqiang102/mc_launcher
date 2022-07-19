import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue.shade100,child: Center(child: TextButton(onPressed: () {  },
    child: Text('登陆'),),),);
  }
}
