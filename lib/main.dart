import 'package:flutter/material.dart';
import 'package:weather/app.dart';
import 'package:weather/weather/data/datasource/remote_data.dart';
import 'package:weather/weather/data/reposotry/repository_model.dart';
import 'package:weather/weather/domain/intities/weather.dart';
import 'package:weather/weather/domain/reposotry/weather_repository.dart';
import 'package:weather/weather/domain/usecase/weathr_usecase.dart';

void main() async{
   BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
   BaseWeatherRepository baseWeatherRepository = WeatherRepository(baseRemoteDataSource);
 Weather weather =await  GetDataByCityName(baseWeatherRepository).excute('Egypt');
 print(weather.toString());
   runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyApp(),
    );
  }
}
