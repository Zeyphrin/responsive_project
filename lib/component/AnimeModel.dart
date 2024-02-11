import 'package:flutter/cupertino.dart';

class AnimeInfo{
  final String imagePath;
  final String judul;

AnimeInfo(this.imagePath, this.judul);
}

final List<AnimeInfo> anime = [
  AnimeInfo('asset/frieren ngantuk.jpg', 'Sousou no Frieren'),
  AnimeInfo('asset/jujur kasihan.jpg', 'Jujutsu Kaisen'),
  AnimeInfo('asset/ngikngok.jpg', 'Koe no Katachi'),
  AnimeInfo('asset/re zero.jpg', 'Re:Zero'),
  AnimeInfo('asset/suzume.jpg', 'Suzume no Tojimari'),
  AnimeInfo('asset/weathering with you.jpg', 'Tenki no Ko'),
  AnimeInfo('asset/sao.jpg', 'Sword Art Online'),
];