import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

void main() {
  runApp(GameWidget(
    game: MyGame(),
  ));
}

class MyGame extends Game {
  static const int square_speed = 400;
  Rect squarePos;
  int squareDirection = 1;

  @override
  Future<void> onLoad() async {
    squarePos = Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  void update(double dt) {
    squarePos = squarePos.translate(square_speed * squareDirection * dt, 0);

    if (squareDirection == 1 && squarePos.right > size.x) {
      squareDirection = -1;
    } else if (squareDirection == -1 && squarePos.left < 0) {
      squareDirection = 1;
    }
  }

  @override
  void render(Canvas canvas) {
    canvas.drawRect(squarePos, BasicPalette.white.paint);
  }
}
