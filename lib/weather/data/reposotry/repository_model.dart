

import 'package:weather/weather/data/datasource/remote_data.dart';
import 'package:weather/weather/domain/intities/weather.dart';
import 'package:weather/weather/domain/reposotry/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  BaseRemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
    return (await remoteDataSource.getDataByCityName(cityName))!;
  }

}