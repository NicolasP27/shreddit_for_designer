import 'package:flutter/material.dart';
import 'package:shreddit_skate_app/pages/choose_region.dart';
import 'package:shreddit_skate_app/pages/home.dart';
import 'package:shreddit_skate_app/pages/loading.dart';
import 'package:shreddit_skate_app/pages/choose_skatepark.dart';
import 'package:shreddit_skate_app/pages/main_page.dart';

void  main() => runApp(MaterialApp(
  initialRoute: '/mainpage',
  routes: {
    '/mainpage':(context) => MainPage(),
    '/':(context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/region': (context) => ChooseRegion(),
  },
));