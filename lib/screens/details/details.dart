import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildDetails();
  }

  _buildDetails() {
    return Scaffold(
      body: Column(
        children: [
          _buildDetailsImage('assets/images/ratatouille.jpg'),
          _buildDetailsTitle('Ratatouille'),
          _buildDetailsIconsLine('2-3 porções', '50 min'),
          _buildDetailsSubtitle('Ingredients'),
          _buildDetailsText('Ingredients here xxx xxx xxx.'),
          _buildDetailsSubtitle('Preparation Mode'),
          _buildDetailsText('Preparation Mode here xxxx xxxx.'),
        ],
      ),
      appBar: _buildAppBar(),
    );
  }

  _buildDetailsImage(image) {
    return Image.asset(image);
  }

  _buildDetailsTitle(title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.deepOrange,
        fontSize: 30,
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
    return Text(
      subtitle,
      style: TextStyle(fontSize: 20),
    );
  }

  _buildDetailsText(text) {
    return Text(
      text
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text('Cooking at home'),
      centerTitle: true,
    );
  }
}
