import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String status;


  ConfirmationScreen({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmed Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader('Title'),
            buildDetail(title),
            buildHeader('Subtitle'),
            buildDetail(subtitle),
            buildHeader('Description'),
            buildDetail(description),
            buildHeader('Status'),
            buildDetail(status),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildDetail(String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        value,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
