# Basic: Rendering a simple square on the screen

This tutorial will introduce you to:

 - `Game`: The basic class to build a game on, you will understand its structure and how to use it to build a simple game
 - `GameWidget`: The widget used to place your game on your widget tree
 - Basic rendering: You will get introduced to the basics of using `dart:ui` class `Canvas` which is the class which Flame uses for rendering your game.

All the code of this tutorial code can be found [here](./code) and is based on Flame `1.0.0-rc7` version.

By the end of this tutorial you will have built a simple game that renders a square bouncing on the screen that will look like this:

![Preview](./media/preview.gif)

## Building your first game

`Game` is the most basic class that you can use to build your game, it includes the necessary methods for creating a basica game loop and methods for the lifecycle of a Flame game.
