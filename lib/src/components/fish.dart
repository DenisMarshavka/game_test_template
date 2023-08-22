import 'dart:async';

import 'package:flame/components.dart';
import 'package:game_template/src/play_session/flame_game/game.dart';

enum MovementState {
  slideLeft,
  slideRight,
}

class FishComponent extends SpriteGroupComponent<MovementState>
    with HasGameRef<MyGame> {
  final double speed = 3;

  FishComponent();

  @override
  FutureOr<void> onLoad() async {
    final Sprite fishLeft = await gameRef.loadSprite('fish.png');
    final Sprite fishRight = await gameRef.loadSprite('fish2.png');

    sprites = {
      MovementState.slideLeft: fishLeft,
      MovementState.slideRight: fishRight,
    };

    size = Vector2.all(140);
    position = gameRef.size / 2;
    anchor = Anchor.center;
    current = MovementState.slideLeft;

    return super.onLoad();
  }
}
