import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
//import 'screens/tabs_screen-top.dart';

import './helpers/custom_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mealsify',
      theme: ThemeData(
        primaryColor: const Color(0xff5c2a9d),
        primaryColorDark: const Color(0xff45046a),
        accentColor: const Color(0xffb5076b),
        canvasColor: Colors.white,
        // fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: GoogleFonts.quicksand(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
              bodyText2: GoogleFonts.quicksand(
                fontSize: 18,
                color: const Color(0xff050505),
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
        '/': (_) => const Categories(),
        CategoryMeals.routeName: (_) => const CategoryMeals(),
        MealDetail.routeName: (_) => const MealDetail(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => const MealDetail());
      },
    );
  }
}
