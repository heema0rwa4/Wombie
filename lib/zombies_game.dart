import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:wombie/assets.dart';
import 'package:wombie/components/components.dart';

class ZombieGame extends FlameGame {
  ZombieGame() : _world = ZombieWorld() {
    cameraComponent = CameraComponent(world: _world);
    images.prefix = '';
  }
  final World _world;
  late final CameraComponent cameraComponent;
  @override
  Future<void> onLoad() async {
    await images.loadAll([
      Assets.assets_chars_zombie_poses_zombie_action1_png,
      Assets.assets_tiles_tile_0001_png,
    ]);
    cameraComponent.viewfinder.anchor = Anchor.topLeft;
    add(cameraComponent);
    add(_world);
  }
}
