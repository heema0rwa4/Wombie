import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'zombies_game.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Flame.images.loadAll([
  //   Assets.assets_chars_zombie_poses_zombie_action2_png,
  //   Assets.assets_chars_zombie_poses_zombie_back_png,
  //   Assets.assets_chars_zombie_poses_zombie_action1_png
  // ]);
  final game = ZombieGame();
  runApp(MyApp(game: game));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.game});
  final ZombieGame game;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GameWidget(game: game),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
