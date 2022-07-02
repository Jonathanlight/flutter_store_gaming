import 'package:flutter/src/foundation/key.dart';
import 'package:gaming/models/game.dart';
import 'package:flutter/material.dart';
import 'package:gaming/widgets/background_image.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class SmallCard extends StatelessWidget {
  final Game game;

  const SmallCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(game.image),
            fit: BoxFit.cover,
          ),
        ),
        width: 150,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GlassmorphicFlexContainer(
              flex: 3,
              borderRadius: 15,
              padding: const EdgeInsets.only(top: 100),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(game.title,
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 2),
                      child: Text(game.online,
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
