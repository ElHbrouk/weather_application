import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key, this.updateUi}) : super(key: key);
  VoidCallback? updateUi;
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              cityName = value;
              WeatherService service = WeatherService();
              WeatherModel weather =
                  await service.getWeather(cityName: cityName!);
              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weather;
              Provider.of<WeatherProvider>(context).cityName = cityName;

              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 16,
              ),
              border: OutlineInputBorder(),
              label: Text(
                'search',
              ),
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter a city',
            ),
          ),
        ),
      ),
    );
  }
}
