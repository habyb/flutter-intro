import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cooking at home'),
          ),
          body: SizedBox(
            height: 300,
            child: Card(
              child: Column(
                children: [
                  Image.network(
                      'https://milkandbun.files.wordpress.com/2015/01/orange-cake-1.jpg'),
                  Text('Orange Cake'),
                ],
              ),
            ),
          )),
    );
  }
}
