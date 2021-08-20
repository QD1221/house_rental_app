import 'package:flutter/material.dart';
import 'package:house_rental_app/provider/filter_provider.dart';
import 'package:house_rental_app/ui/filter_page.dart';
import 'package:house_rental_app/ui/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FilterProvider(),
      child: MaterialApp(
        routes: {
          '/': (context) => HomePage(),
          '/search/filter': (context) => FilterPage(),
        },
        title: 'Quang Tran',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
