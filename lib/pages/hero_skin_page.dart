import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/models/skin.dart';
import 'package:mobile_legends_skins/widgets/app_bar.dart';
import 'package:mobile_legends_skins/widgets/base_text.dart';

class HeroSkinPage extends StatelessWidget {
  HeroSkinPage();

  @override
  Widget build(BuildContext context) {
    Map heroProperties = ModalRoute.of(context).settings.arguments;

    String heroName = heroProperties['heroName'];
    Skin heroSkin = heroProperties['heroSkin'];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: .1,
                      color: Colors.grey[300],
                      spreadRadius: .3,
                      offset: Offset(0, -1),
                    ),
                  ],
                ),
                child: Wrap(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: BaseAppBar(
                        title: '$heroName',
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 24),
                      margin: EdgeInsets.only(top: 8),
                      child: BaseText(
                        text: '${heroSkin.name}',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: 660,
                ),
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    heroSkin.imagePath,
                    fit: BoxFit.fitHeight,
                    alignment: Alignment(0, -0.7),
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
