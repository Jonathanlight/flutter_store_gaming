import 'package:flutter/src/foundation/key.dart';
import 'package:gaming/models/game.dart';
import 'package:flutter/material.dart';
import 'package:gaming/pages/detail_page.dart';
import 'package:gaming/widgets/background_image.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'dart:math' as math;

class LargeCard extends StatelessWidget {
  final Game game;

  const LargeCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(game: game),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(game.image),
              fit: BoxFit.cover,
            ),
          ),
          width: 350,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              GlassmorphicFlexContainer(
                flex: 3,
                borderRadius: 20,
                padding: const EdgeInsets.only(top: 320),
                blur: 14,
                alignment: Alignment.bottomCenter,
                border: 0,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFF75035).withAlpha(55),
                      const Color(0xFFffffff).withAlpha(45),
                    ],
                    stops: const [
                      0.3,
                      1,
                    ]),
                borderGradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      const Color(0xFF4579C5).withAlpha(100),
                      const Color(0x0fffffff).withAlpha(55),
                      const Color(0xFFF75035).withAlpha(10),
                    ],
                    stops: const [
                      0.06,
                      0.95,
                      1
                    ]),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(game.title,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(game.online,
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Row(
                          children: [
                            RatingStars(
                              value: game.rating,
                              maxValueVisibility: false,
                              valueLabelVisibility: false,
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              starOffColor:
                                  const Color.fromARGB(255, 111, 111, 111),
                              starColor: const Color.fromARGB(255, 240, 200, 0),
                              starSpacing: 1,
                              starBuilder: (index, color) => Icon(
                                Icons.star,
                                color: color,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(game.rating.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
