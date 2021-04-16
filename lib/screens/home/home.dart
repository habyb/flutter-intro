import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_intro/models/receita.dart';
import 'package:flutter_intro/screens/details/details.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(),
            ));
      },
      child: SizedBox(
        height: 300,
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  _buildCardImage(picture),
                  _buildCardGradient(),
                  _buidCardText(title),
                ],
              )
            ],
          ),
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

  Container _buildCardGradient() {
    return Container(
      height: 268,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.deepOrange.withOpacity(0.7),
        ],
      )),
    );
  }

  Positioned _buidCardText(title) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
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
