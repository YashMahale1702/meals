import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key key}) : super(key: key);

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
