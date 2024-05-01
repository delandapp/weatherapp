import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui';

import 'package:weatherapp/bloc/weather_bloc_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(6, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4E31AA),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-6, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4E31AA),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Color(0xFfD21312),
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 120.0, sigmaY: 70.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
                builder: (context, state) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "🌄 DelandApp-Weather-App",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Good Morning",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Image.asset("assets/3.png"),
                        const Center(
                          child: Text(
                            "21°C",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 55,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            "HUJAN BADAI",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Center(
                          child: Text(
                            "Friday 16 - 09.20 wib",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/11.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sunrise",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "05:30 wib",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/12.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sunset",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "17:30 wib",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(
                            color: Colors.transparent,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/13.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Temp Max",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "12°C",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/14.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Temp Min",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "8°C",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
