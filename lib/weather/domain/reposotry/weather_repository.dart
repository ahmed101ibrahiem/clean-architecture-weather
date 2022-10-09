

import 'package:weather/weather/domain/intities/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather>getWeatherByCityName(String cityName);
}