import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a City',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          'this is a weather app',
        ),
      ),
    );
  }
}
