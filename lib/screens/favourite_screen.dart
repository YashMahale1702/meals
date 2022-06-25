import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Favourites',
          style: Theme.of(context).textTheme.bodyText1,
        )),
      ),
      body: const Center(
        child: Text('fav section '),
      ),
    );
  }
}
