import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_intro/models/receita.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _buildHome();
  }

  Widget _buildHome() {
    return Scaffold(
      body: _buildCardList(),
      appBar: _buildAppBar(),
    );
  }

  Widget _buildCardList() {
    return FutureBuilder(
        initialData: [],
        future:
            DefaultAssetBundle.of(context).loadString('assets/receitas.json'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          List<dynamic> receitas = json.decode(snapshot.data.toString());

          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              Receita receita = Receita.fromJson(receitas[index]);
              return _buildCard(receita.title, receita.picture);
            },
            itemCount: receitas.length,
          );
        });
  }

  Widget _buildCard(title, picture) {
    return SizedBox(
      height: 300,
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                _buildCardImage(picture),
                _buidCardText(title),
              ],
            )
          ],
        ),
      ),
    );
  }

  Image _buildCardImage(picture) {
    return Image.asset(
      picture,
      fit: BoxFit.fill,
      height: 268,
    );
  }

  Positioned _buidCardText(title) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        title,
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
