import 'package:flutter/material.dart';
import 'package:movies_app/models/movies_main.dart';
import 'package:movies_app/res/app_context_extension.dart';
import 'package:movies_app/views/details/movie_details_screen.dart';
import 'package:movies_app/views/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: context.resources.color.colorPrimary,
        hintColor: context.resources.color.colorAccent,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        MovieDetailsScreen.id: (context) => MovieDetailsScreen(
            ModalRoute.of(context)!.settings.arguments as Movie),
      },
    );
  }
}
