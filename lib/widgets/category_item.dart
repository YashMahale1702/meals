import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem({this.title, this.color, this.id});

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMeals.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {selectCategory(context)},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color,
              color.withOpacity(.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(10),
            //     child: Image.network(
            //       "https://images.pexels.com/photos/41320/beef-cheese-cuisine-delicious-41320.jpeg?cs=srgb&dl=pexels-public-domain-pictures-41320.jpg&fm=jpg",
            //       fit: BoxFit.cover,
            //       width: 110,
            //       colorBlendMode: BlendMode.screen,
            //       color: Colors.white.withOpacity(.3),
            //     ),
            //   ),
            // ),
            Positioned(
              top: 10,
              left: 15,
              child: Container(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
