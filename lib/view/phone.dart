import 'package:flutter/material.dart';
import 'package:responsive_project/component/drawer.dart';

import '../component/AnimeModel.dart';
import '../reusable/cards.dart';

class PhoneView extends StatelessWidget {
  const PhoneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191C44),
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xff21255A),
          title: Text(
            'AniLore Mobile View',
            style: TextStyle(fontFamily: 'ProductSansBold', color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: anime.length,
          itemBuilder: (BuildContext context, int index) {
            return cardhorizontal(
              imagePath: anime[index].imagePath,
              description: anime[index].judul,
              rating: anime[index].rating,
            );
          },
        ));
  }
}
