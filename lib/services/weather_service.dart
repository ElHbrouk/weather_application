import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  void getWeather({required String cityName}) async {
    String baseUrl = 'http://api.weatherapi.com/v1';
    String apiKey = 'a33a6d2fb08641b5892213931232901';
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    String date = data['location']['localtime'];
    String temp = data['forecast']['forecastday'][0]['avgtemp_c'];
  }
}
