part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();
  
  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}
final class WeatherBlocLoading extends WeatherBlocState {}
final class WeatherBlocFailure extends WeatherBlocState {}
final class WeatherBlocSuccess extends WeatherBlocState {
  final Weather weather;
  final String weatherTranslate;
  final String dateFormat;
  final String dateFormatSunrise;
  final String dateFormatSunset;
  final String ucapan;

  const WeatherBlocSuccess(this.weather,this.weatherTranslate,this.dateFormat,this.dateFormatSunrise,this.dateFormatSunset,this.ucapan);

  @override
  List<Object> get props => [weather,weatherTranslate,dateFormat,dateFormatSunrise,dateFormatSunset,ucapan];
}
