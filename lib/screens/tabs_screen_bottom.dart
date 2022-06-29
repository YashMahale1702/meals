import 'package:flutter/material.dart';

class TabsScreenBottom extends StatefulWidget {
  const TabsScreenBottom({Key key}) : super(key: key);

  @override
  TabsScreenBottomState createState() => TabsScreenBottomState();
}

class TabsScreenBottomState extends State<TabsScreenBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
      ),
      body: null,
      //bottomNavigationBar: BottomNavigationBar( items: ,),
    );
  }
}
