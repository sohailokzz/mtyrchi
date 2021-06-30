import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: FlatButton(
          onPressed: () {},
          child: Text('Go to next screen'),
          color: Colors.white,
        ),
      ),
    );
  }
}
