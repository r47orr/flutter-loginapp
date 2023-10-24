import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  final String param;
  final List<String> dados;
  const DataPage({super.key, required this.param, required this.dados});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text(param)),
      body: const Center(
        child: Text('Dados cadastrais'),
      ),
    ));
  }
}
