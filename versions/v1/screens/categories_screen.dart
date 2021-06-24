import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80.0, bottom: 20.0),
            child: Text(
              'Main Menu'.toUpperCase(),
              textAlign: TextAlign.left,
              style: GoogleFonts.mcLaren(
                fontSize: 25,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Expanded(
            child: GridView(
              children: DUMMY_CATEGORIES
                  .map((cur) => CategoryItem(
                        color: cur.color,
                        title: cur.title,
                        id: cur.id,
                      ))
                  .toList(),
              padding: EdgeInsets.all(25),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
