import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/models/hero.dart';
import 'package:mobile_legends_skins/widgets/base_text.dart';

class HeroCard extends StatelessWidget {
  final MLBBHero hero;
  final Function handleSelectHero;

  HeroCard({this.hero, this.handleSelectHero});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: 175,
          height: 225,
          margin: EdgeInsets.only(right: 8, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black26,
                offset: Offset(.5, 5),
                spreadRadius: .1,
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              handleSelectHero(hero.skins);
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    hero.skins[0].imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 16,
                  child: BaseText(
                    text: hero.name,
                    fontSize: 20,
                    isBold: true,
                    withShadow: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
