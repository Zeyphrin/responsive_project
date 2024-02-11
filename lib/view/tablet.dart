import 'package:flutter/material.dart';
import 'package:responsive_project/component/drawer.dart';

import '../component/AnimeModel.dart';
import '../reusable/cards.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Fruitpedia Tablet view',
            style: TextStyle(
                fontFamily: 'LibreCaslonText'
            ),
          ),
        ),
        body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: anime.length,
          itemBuilder: (BuildContext context, int index) {
            return CardGrid(
              imagePath: anime[index].imagePath,
              description: anime[index].judul,
            );
          },
        ),




    );
  }
}