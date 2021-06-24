import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
//import 'screens/tabs_screen-top.dart';
import './screens/tabs_screen-bottom.dart';

import './helpers/custom_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mealsify',
      theme: ThemeData(
        primaryColor: Color(0xff5c2a9d),
        primaryColorDark: Color(0xff45046a),
        accentColor: Color(0xffb5076b),
        canvasColor: Colors.white,
        // fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: GoogleFonts.quicksand(
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.orange,
              ),
              body1: GoogleFonts.quicksand(
                fontSize: 18,
                color: Color(0xff050505),
              ),
            ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CustomPageTransitionBuilder(),
            TargetPlatform.iOS: CustomPageTransitionBuilder(),
          },
        ),
      ),
      // home: Categories(),
      routes: {
        '/': (_) => Categories(),
        CategoryMeals.routeName: (_) => CategoryMeals(),
        MealDetail.routeName: (_) => MealDetail(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => MealDetail());
      },
    );
  }
}
