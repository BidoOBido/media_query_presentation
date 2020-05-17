import 'package:flutter/material.dart';
import 'package:media_query_presentation/mainPage.dart';

void main() {
  runApp(MediaQueryPresentation());
}

class MediaQueryPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Query Presentation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(title: 'Main'),
    );
  }
}
