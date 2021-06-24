import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favourite_screen.dart';

class TabsScreenTop extends StatefulWidget {
  @override
  _TabsScreenTopState createState() => _TabsScreenTopState();
}

class _TabsScreenTopState extends State<TabsScreenTop> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meal App'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                child: Text('Categories'),
              ),
              Tab(
                icon: Icon(Icons.star),
                child: Text('Favourites'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Categories(),
            Favourite(),
          ],
        ),
      ),
    );
  }
}
