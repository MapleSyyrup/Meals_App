import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
import '../screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
    String title,
    IconData icon,
    BuildContext context,
    String routeName,
  ) {
    return ListTile(
      leading: Icon(
        Icons.restaurant,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => Navigator.of(context).pushReplacementNamed(routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: theme.accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: theme.primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'Meals',
            Icons.restaurant,
            context,
            TabsScreen.routeName,
          ),
          buildListTile(
            'Filters',
            Icons.settings,
            context,
            FiltersScreen.routeName,
          )
        ],
      ),
    );
  }
}
