import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weater_provider.dart';
import 'package:weather_app/view/home_screen_no_data.dart';
import 'package:weather_app/view/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var weatherData = Provider.of<WeatherProvider>(context, listen: true);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Weater App',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen();
                  }));
                },
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                ))
          ],
        ),
        body: weatherData == null
            ? HomeNoData()
            : Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 140,
                      height: 14,
                      child: Image.network(
                        "https:${weatherData.weatherProvider?.icon}",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${weatherData.weatherProvider?.temp}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "${weatherData.weatherProvider?.name}",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Additional information",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Card(
                              color: Colors.white,
                              elevation: 0,
                              child: Column(
                                children: [
                                  Text(
                                      "${weatherData.weatherProvider?.windSpeed}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Image.asset(
                                    "assets/sun.png",
                                    height: 30,
                                    width: 25,
                                  ),
                                  Text(
                                    "wind speed",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Card(
                              color: Colors.white,
                              elevation: 0,
                              child: Column(
                                children: [
                                  Text(
                                      "${weatherData.weatherProvider?.pressure}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Image.asset(
                                    "assets/sun.png",
                                    height: 30,
                                    width: 25,
                                  ),
                                  Text(
                                    "pressure",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 65,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Card(
                              color: Colors.white,
                              elevation: 0,
                              child: Column(
                                children: [
                                  Text(
                                      "${weatherData.weatherProvider?.humidity}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Image.asset(
                                    "assets/sun.png",
                                    height: 30,
                                    width: 25,
                                  ),
                                  Text(
                                    "humidaty",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Card(
                              color: Colors.white,
                              elevation: 0,
                              child: Column(
                                children: [
                                  Text(
                                      "${weatherData.weatherProvider?.maxTemp}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Image.asset(
                                    "assets/sun.png",
                                    height: 30,
                                    width: 25,
                                  ),
                                  Text(
                                    "temp",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ))
                  ],
                ),
              ));
  }
}
