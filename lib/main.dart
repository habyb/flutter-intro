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
              margin: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.network(
                        'https://milkandbun.files.wordpress.com/2015/01/orange-cake-1.jpg',
                        fit: BoxFit.fill,
                        height: 268,
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          'Orange Cake',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
