# 2D Platformer game GODOT

A fun platformer game made using Godot Game engine.

## How to run this?

To run this, You need Godot engine installed. Install it, if you have not yet from [here](https://godotengine.org).

Then once done, Import the project and Open the Main screen scene and others. Run using FN + F5 to start from 
main screen, or FN + F6 to start from current scene.

Here are the controls list:
- Move forward: Right arrow or `D` Key
- Move backward: Left arrow or `A` key
- Jump: Hold space bar, Up arrow or `W` Key
- Pause the game: `ESC` key.

The goal is to collect coins, Dodge / Kill enemies and safely reach the portal.

For project layout info, See the section below.

## Project layout info

This project has been divided into 6 sections for this project.

- `Actors/` contains the classes for the players and enemy that does some work, and is a 
  moving object.
- `Autoload/` contains the variables and classes autoloaded when the game starts, and is
  made visible to All other scripts and scenes.
- `Levels/` Contains the levels for the game, and Movement from one to another. These 
  connect between levels, or if the level is last, It connects to End screen.
- `Objects/` contains the static things which perform some functionality on interaction.
  For example, Coin increases score, and disappears when collected and such.
- `Screens/` contains the User interface model groups, such as Main screen, Paused screen and
  End screen.
- `UserInterface/` contains the elements which consist screens, and keeps everything DRY
  to prevent repeating.

## Project guides

### Adding a level

You can add a level as follows:

- Duplicate the `LevelTemplate.tscn`, and Remove all the elements. Hide the enemies, objects
  and actors.
- Once done, Click tiling map, and Start removing walls, extend them and add the map, consiting 
  of barriers, Helpers, Jumps and various fun things.
- Once map is created, Show the coins and enemies. Start placing coins one by one to guide and 
  give user a hint to reach portal. Once that's done, Place enemies randomly to make it a bit hard 
  and challenging for user. Finally place the portal in end, and Find the next scene in the File 
  browser in left hand side, Drag it and place in the right configuration panel of `next_scene`.
  Rename the cloned level to level number, such as if the level number is `4`, I'll name the main node
  to `Level04`.

  **NOTE**: If you're making a level in the middle, for example `Level02`, You need to rename everything after
  that, For, example `Level02` to `Level03`, `Level03` to `Level04`. Else if you're making a end level, Link the 
  level before that to the level you made, and Add EndScreen in Screens for the last level you made.

  YOU can Link the levels using the `next_scene` variable as noted.

## Contributing

Contributions, issues and feature requests are welcome. After cloning & setting up project locally, you 
can just submit a PR to this repo and it will be deployed once it's accepted. The contributing file can be 
found 
[here](https://github.com/janaSunrise/overflow-discord-bot/blob/main/CONTRIBUTING.md).

⚠️ It’s good to have descriptive commit messages, or PR titles so that other contributors can understand about your 
commit or the PR Created. Read [conventional commits](https://www.conventionalcommits.org/en/v1.0.0-beta.3/) 
before making the commit message.

## Show your support

We love people's support in growing and improving. Be sure to leave a ⭐️ if you like the project and 
also be sure to contribute, if you're interested!


<div align="center">
Made by Sunrit Jana with <3
</div>
