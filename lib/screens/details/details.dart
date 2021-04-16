import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_intro/models/receita.dart';

class Details extends StatelessWidget {

  final Receita receita;

  const Details({Key? key, required this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildDetails();
  }

  _buildDetails() {
    return Scaffold(
      body: ListView(
        children: [
          _buildDetailsImage(receita.picture),
          _buildDetailsTitle(receita.title),
          _buildDetailsIconsLine('${receita.portions} portions', receita.preparationTime),
          _buildDetailsSubtitle('Ingredients'),
          _buildDetailsText(receita.ingredients),
          _buildDetailsSubtitle('Preparation Mode'),
          _buildDetailsText(receita.preparationMode),
        ],
      ),
      appBar: _buildAppBar(),
    );
  }

  _buildDetailsImage(image) {
    return Image.asset(image);
  }

  _buildDetailsTitle(title) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 30,
        ),
      ),
    );
  }

  _buildDetailsIconsLine(portion, time) {
    return Row(
      children: [
        _buildDetailsIconColumn(Icons.restaurant, portion),
        _buildDetailsIconColumn(Icons.timer, time),
      ],
    );
  }

  _buildDetailsIconColumn(icon, text) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.deepOrange,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _buildDetailsSubtitle(subtitle) {
    return Center(
      child: Text(
        subtitle,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  _buildDetailsText(text) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        text
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text('Cooking at home'),
      centerTitle: true,
    );
  }
}
