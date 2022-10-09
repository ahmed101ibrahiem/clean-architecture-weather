
import 'package:weather/weather/domain/intities/weather.dart';

import '../reposotry/weather_repository.dart';


class GetDataByCityName{
  final BaseWeatherRepository weatherRepository ;

  GetDataByCityName(this.weatherRepository);

  Future<Weather>excute(String cityName)async{
    return (await weatherRepository.getWeatherByCityName(cityName))!;
  }

}
