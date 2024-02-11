import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  final String imagePath;
  final String description;
  final String rating;

  const CardGrid({
    required this.imagePath,
    required this.description,
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Card(
        color: Color(0xff21255A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 14, fontFamily: 'ProductSansBold', color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.star_rate_rounded,color: Color(0xffFE0078)),
                Text(
                  rating,
                  style: TextStyle(fontFamily: 'ProductSans', fontSize: 16, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class cardhorizontal extends StatelessWidget {
  final String imagePath;
  final String description;
  final String rating;

  const cardhorizontal({
    required this.imagePath,
    required this.description,
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.9;
    double imageWidth = cardWidth * 0.25;

    return Card(
      color: Color(0xff21255A),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            SizedBox(
              width: imageWidth,
              height: imageWidth,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16), // Adjust the spacing as needed
            Expanded(
              child: Column(
                children: [
                  Text(
                    description,
                    style:
                        TextStyle(fontFamily: 'ProductSansBold', fontSize: 18, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_rate_rounded,color: Color(0xffFE0078)),
                      Text(
                        rating,
                        style: TextStyle(fontFamily: 'ProductSans', fontSize: 16, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
