import 'package:flutter/material.dart';
import 'package:responsive_project/component/drawer.dart';

import '../component/AnimeModel.dart';
import '../reusable/cards.dart';

class PhoneView extends StatelessWidget {
  const PhoneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Fruitpedia Mobile View',
        style: TextStyle(
            fontFamily: 'LibreCaslonText'
        ),
        ),
      ),
      body:
      ListView.builder(
        itemCount: anime.length,
        itemBuilder: (BuildContext context, int index) {
          return cardhorizontal(imagePath: anime[index].imagePath, description: anime[index].judul);
        },
      )



    );
  }
}