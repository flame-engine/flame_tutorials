# Basic: Rendering a simple square on the screen

This tutorial will introduce you to:

 - `Game`: The basic class to build a game on, you will understand its structure and how to use it to build a simple game
 - `GameWidget`: The widget used to place your game on your widget tree
 - Basic rendering: You will get introduced to the basics of using `dart:ui` class `Canvas` which is the class which Flame uses for rendering your game.

All the code of this tutorial code can be found [here](./code) and is based on Flame `1.0.0-rc7` version.

By the end of this tutorial you will have built a simple game that renders a square bouncing on the screen that will look like this:

![Preview](./media/preview.gif)

## Building your first game

`Game` is the most basic class that you can use to build your game, it includes the necessary methods for creating a basic game loop and methods for the lifecycle of a Flame game.

`GameWidget` is, like its name suggest, a Flutter widget that will run your game and place it inside the Flutter widget tree.

As a first step, lets just put a Game instance running, for that we will need to create our own class that extends Flame's Game class, implement its methods, and pass an instance of that Game to a GameWidget, somehting like this:

```dart
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

void main() {
  runApp(GameWidget(
    game: MyGame(),
  ));
}

class MyGame extends Game {
  @override
  void update(double dt) { /* TODO */ }
 }

  @override
  void render(Canvas canvas) { /* TODO */ }
}
```

That is it, you should see just an empty black screen for now, but now we have the bare bones needed to start implementing our game.

Before going further, it is important to explain what those two methods mean.

Flame's `Game` class is an implementation of a Game Loop, which the basic structure on which basically all games are built on. It is called Game Loop because it really works a an infinite loop that continues to iterate as long as the game is running. This loop can be divided on some steps:

 - 1: Take input from the player
 - 2: Process the logic for the next frame
 - 3: Render the frame.

On this tutorial we will focus the steps two and three.

To process the logic of the game, we use the `update` method, which is ran always before the frame is rendered and receives a single argument, a `double` value called `dt` (delta time), which is the ammout os seconds from the current iteration and the last one. This delta time is very important so we can always know how to correct calculate movement, animations and etc.

To render the frame, we use the `render` method, this method receives a single argument which is an instance of a `dart:ui` `Canvas` class. With that instance we can basically render anything we want. It is important to not that in this method, we should only contain render logic, any game logic should be put in the `update` method.

Now that we have a better understanding of how the game structures works, lets start to plan our game.
