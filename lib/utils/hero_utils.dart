import 'package:mobile_legends_skins/models/hero.dart';
import 'package:mobile_legends_skins/models/skin.dart';

List<MLBBHero> getHeroData() {
  List<MLBBHero> heroes = [];

  String imageBaseURL = 'assets/images/';

  heroes.add(
    new MLBBHero(name: "Argus", skins: [
      new Skin(
        name: 'Default',
        imagePath: '${imageBaseURL}argus_default.jpg',
      ),
      new Skin(
        name: 'Basic',
        imagePath: '${imageBaseURL}argus_basic.jpg',
      ),
      new Skin(
        name: 'Starlight',
        imagePath: '${imageBaseURL}argus_wallpaper.jpg',
      ),
    ]),
  );

  heroes.add(
    new MLBBHero(name: "Atlas", skins: [
      new Skin(name: 'Default', imagePath: '${imageBaseURL}atlas_default.jpg'),
      new Skin(name: 'Elite', imagePath: '${imageBaseURL}atlas_elite.jpg'),
    ]),
  );

  heroes.add(
    new MLBBHero(name: "Esmeralda", skins: [
      new Skin(
          name: 'Default', imagePath: '${imageBaseURL}esmeralda_default.jpg'),
      new Skin(name: 'Basic', imagePath: '${imageBaseURL}esmeralda_basic.jpg'),
      new Skin(
          name: 'Starlight',
          imagePath: '${imageBaseURL}esmeralda_starlight.jpg'),
    ]),
  );

  heroes.add(
    new MLBBHero(name: "Helcurt", skins: [
      new Skin(name: 'Elite', imagePath: '${imageBaseURL}helcurt_elite.jpg'),
      new Skin(name: 'Basic', imagePath: '${imageBaseURL}helcurt_basic.jpg'),
      new Skin(name: 'Zodiac', imagePath: '${imageBaseURL}helcurt_zodiac.jpg'),
    ]),
  );

  return heroes;
}
