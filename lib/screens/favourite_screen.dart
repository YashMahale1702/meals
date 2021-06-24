import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Favourites',
          style: Theme.of(context).textTheme.title,
        )),
      ),
      body: Center(
        child: Text('fav section '),
      ),
    );
  }
}
