import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:weatherapp/data/my_data.dart';
import 'package:translator/translator.dart';
import 'dart:core';
part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf =
            WeatherFactory(API_KEY, language: Language.INDONESIAN);

        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude, event.position.longitude);
        print(weather);
        final translator = GoogleTranslator();
        var translation = await translator
            .translate(weather.weatherMain.toString(), to: 'id');
        print(translation.text);
        final date = weather.date;
        // Ganti dengan tanggal yang sesuai
        final formatter = DateFormat('EEEE dd -', 'id_ID').add_jm();
        final formatterJam = DateFormat('', 'id_ID').add_jm();
        final formatterSunrise = formatterJam.format(weather.sunrise!);
        final formatterSunset = formatterJam.format(weather.sunset!);
        final formattedDate = formatter.format(date!);

        DateTime now = DateTime.now();
        int hour = now.hour;
        String greeting;

        if (hour >= 0 && hour < 12) {
          greeting = 'Selamat pagi'; // Good morning
        } else if (hour < 17) {
          greeting = 'Selamat siang'; // Good afternoon
        } else {
          greeting = 'Selamat malam'; // Good evening
        }
        emit(WeatherBlocSuccess(weather, translation.text.toString(),
            formattedDate, formatterSunrise, formatterSunset,greeting));
      } catch (e) {
        print(e);
        emit(WeatherBlocFailure());
      }
    });
  }
}
