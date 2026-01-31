import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weater_provider.dart';
import 'package:weather_app/sevices/weather_services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? locatoion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Searching'),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              onChanged: (data) {
                locatoion = data;
              },
              onSubmitted: (data) async {
                locatoion = data;
                ApiSevices services = ApiSevices();
                var weather = await services.getWeater(location: locatoion);
                Provider.of<WeatherProvider>(context, listen: false)
                    .getWeaterData(weather!);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  suffixIcon: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                  ),
                  hintText: ("Enter city Name"),
                  labelText: "search",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.search_rounded,
              size: 80,
            )
          ],
        ),
      ),
    );
  }
}
