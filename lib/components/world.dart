import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:wombie/zombies_game.dart';

import '../assets.dart';
import 'land.dart';

class ZombieWorld extends World with HasGameRef<ZombieGame> {
  ZombieWorld({super.children});
  final List<Land> land = [];
  @override
  Future<void> onLoad() async {
    final image = game.images.fromCache(Assets.assets_tiles_tile_0001_png);
    land.add(EmptyLand(position: Vector2.all(50), sprite: Sprite(image)));
    add(land.last);
  }
}
