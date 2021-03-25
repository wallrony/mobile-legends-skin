import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/models/skin.dart';
import 'package:mobile_legends_skins/widgets/base_text.dart';

class HeroSkin extends StatelessWidget {
  final String heroName;
  final Skin heroSkin;

  HeroSkin({this.heroName, this.heroSkin});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        'hero-skin',
        arguments: {
          'heroName': heroName,
          'heroSkin': heroSkin,
        },
      ),
      child: Container(
        height: 125,
        margin: EdgeInsets.only(right: 12, bottom: 12),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 5,
              spreadRadius: .5,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  heroSkin.imagePath,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment(0, -0.7),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 32,
              child: BaseText(
                text: heroSkin.name,
                isBold: true,
                withShadow: true,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
