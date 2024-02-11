import 'package:flutter/material.dart';

import '../component/AnimeModel.dart';
import '../component/drawer.dart';
import '../reusable/cards.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('AniLore Desktop View',
          style: TextStyle(
              fontFamily: 'ProductSansBold'
          ),
        ),
      ),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
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
