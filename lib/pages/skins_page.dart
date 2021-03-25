import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/models/hero.dart';
import 'package:mobile_legends_skins/models/skin.dart';
import 'package:mobile_legends_skins/utils/hero_utils.dart';
import 'package:mobile_legends_skins/widgets/app_bar.dart';
import 'package:mobile_legends_skins/widgets/base_text.dart';
import 'package:mobile_legends_skins/widgets/hero_card.dart';
import 'package:mobile_legends_skins/widgets/hero_skin.dart';

/**
 * StatelessWidget têm um contexto
 *    -> Deve-se implementar o método build
 * 
 * StatefulWidget têm um estado que tem um contexto
 *    -> Deve-se implementar o método createState()
 *    
 *    State -> Deve-se implementar o método build
 */

class SkinsPage extends StatefulWidget {
  @override
  _SkinsPageState createState() => _SkinsPageState();
}

class _SkinsPageState extends State<SkinsPage> {
  final List<MLBBHero> heroes = getHeroData();

  List<Skin> selectedHeroSkins;
  String selectedHeroName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: BaseAppBar(title: 'Skins'),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: BaseText(
                    text: '${heroes.length} heroes',
                    color: Colors.black,
                    fontSize: 24,
                    isBold: true,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 245,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: heroes.length,
                    itemBuilder: (context, index) {
                      return HeroCard(
                        hero: heroes[index],
                        handleSelectHero: (List<Skin> skins) {
                          selectHero(skins, heroes[index].name);
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: BaseText(
                    text: selectedHeroSkins != null
                        ? "${selectedHeroSkins.length} Skins"
                        : "Select a hero to show his skin list.",
                    color: Colors.black,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: _makeHeroSkinsList(),
                ),
                SizedBox(height: 64),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _makeHeroSkinsList() {
    if (selectedHeroSkins != null) {
      return Flexible(
        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: selectedHeroSkins.length,
          itemBuilder: (context, index) {
            return HeroSkin(
              heroName: selectedHeroName,
              heroSkin: selectedHeroSkins[index],
            );
          },
        ),
      );
    }

    return Container();
  }

  selectHero(List<Skin> skins, String heroName) {
    setState(() {
      selectedHeroSkins = skins;
      selectedHeroName = heroName;
    });
  }
}
