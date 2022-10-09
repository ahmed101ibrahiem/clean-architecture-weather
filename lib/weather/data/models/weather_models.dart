import 'package:weather/weather/domain/intities/weather.dart';

class WeatherModels extends Weather {
  WeatherModels(
      super.id, super.cityName, super.main, super.description, super.presure);

  factory WeatherModels.fromJson(Map<String, dynamic> json) => WeatherModels(
        json['id'],
        json['name'],
        json['weather'][0]['main'],
        json['weather'][0]['description'],
        json['main']['pressure'],
      );
}
