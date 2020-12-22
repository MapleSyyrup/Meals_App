import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);
  
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {   
      return Center(
      child: Text('The Favorites'),}
  
    );
  }
}
