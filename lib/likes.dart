import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Stack(
          children: [Text('Likes')],
        )),
      ),
    );
  }
}
