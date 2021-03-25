import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/widgets/base_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/argus_wallpaper.jpg',
              alignment: Alignment.center,
              fit: BoxFit.fitHeight,
              height: double.maxFinite,
            ),
            Container(
              color: Colors.black54,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseText(
                    text: 'See',
                    fontSize: 56,
                    isBold: true,
                  ),
                  BaseText(
                    text: 'Heroes',
                    fontSize: 56,
                    isBold: true,
                    color: Colors.amberAccent,
                  ),
                  BaseText(
                    text: 'Skins',
                    fontSize: 56,
                    isBold: true,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24, bottom: 80),
                    child: BaseText(
                      text: 'See the favorite skins of your favorite heroes.',
                      color: Colors.white70,
                      fontSize: 18,
                      isBold: true,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'skins');
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 64),
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BaseText(
                            text: 'Get started ',
                            fontSize: 24,
                            isBold: true,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 36,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
