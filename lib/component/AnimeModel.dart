import 'package:flutter/cupertino.dart';

class AnimeInfo{
  final String imagePath;
  final String judul;
  final String rating;

AnimeInfo(this.imagePath, this.judul, this.rating);
}

final List<AnimeInfo> anime = [
  AnimeInfo('asset/frieren ngantuk.jpg', 'Sousou no Frieren', '9.14'),
  AnimeInfo('asset/jujur kasihan.jpg', 'Jujutsu Kaisen', '8.62'),
  AnimeInfo('asset/ngikngok.jpg', 'Koe no Katachi', '8.93'),
  AnimeInfo('asset/re zero.jpg', 'Re:Zero', '8.23'),
  AnimeInfo('asset/suzume.jpg', 'Suzume no Tojimari', '8.32'),
  AnimeInfo('asset/weathering with you.jpg', 'Tenki no Ko', '8.26'),
  AnimeInfo('asset/sao.jpg', 'Sword Art Online', '7.20'),
];