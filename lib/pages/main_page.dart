import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:shreddit_skate_app/services/weather.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map weatherData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '\nWelcome to Shreddit \nClick Edit Skatpark to begin',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20.0),
            TextButton.icon(
              onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, '/region');
                setState(() {
                  weatherData = {
                    'weather': result['weather'],
                    'location': result['location'],
                    'skateparkPicture1': result['skateparkPicture1'],
                    'address': result['address'],
                    'parksize': result['parksize'],
                    'lights': result['lights'],
                    'padrequirement': result['padrequirement'],
                    'times': result['times'],
                  };
                });
              },
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              icon: Icon(
                Icons.edit_location,
                color: Colors.grey[300],
              ),
              label: Text(
                'Edit Skatepark',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey[300],
                ),
              ),
            ),

            // const Center(
            // child: Text('Welcome to Shred \nClick Edit Skatpark to begin'),
          ]),
        ),
      ),
    );
  }
}