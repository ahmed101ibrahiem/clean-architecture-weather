

import 'dart:convert';

import 'package:weather/core/utils/constant_string.dart';

import '../models/weather_models.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModels?> getDataByCityName(String cityName);
}


class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModels?> getDataByCityName(String cityName) async{
      try {
        var response = await Dio().get('${AppConstantString.baseUrl}/weather?q=$cityName&appid=${AppConstantString.appKeyUrl}');
        print(response);
        return WeatherModels.fromJson(response.data);

      } catch (e) {
        print(e);
        return null;
      }
    }

}