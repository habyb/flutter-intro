import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildHome();
  }

  Widget _buildHome() {
    return Scaffold(
      body: _buildCard(),
      appBar: _buildAppBar(),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 300,
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                _buildCardImage(),
                _buidCardText(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Image _buildCardImage() {
    return Image.network(
      'https://milkandbun.files.wordpress.com/2015/01/orange-cake-1.jpg',
      fit: BoxFit.fill,
      height: 268,
    );
  }

  Positioned _buidCardText() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        'Orange Cake',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Cooking at home'),
      centerTitle: true,
    );
  }
}