import 'package:flutter/material.dart';
import 'package:news_app_ui/views/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/discover': (context) => DiscoverScreen(),
        '/article': (context) => ArticleScreen(),
       }
    );
  }
}