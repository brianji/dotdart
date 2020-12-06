import 'package:dotdart/dotdart.dart';
import 'package:dotdart/file.dart';

const files = [
  DotFile.config(directory: 'bspwm', name: 'bspwmrc'),
  DotFile.config(directory: 'dunst', name: 'dunstrc'),
  DotFile.config(directory: 'kitty', name: 'kitty.conf'),
  DotFile.config(directory: 'sxhkd', name: 'sxhkdrc'),
  DotFile.config(directory: 'rofi', name: 'config.rasi'),
  DotFile.config(directory: 'pacman', name: 'makepkg.conf'),
  DotFile.config(directory: 'picom', name: 'picom.conf'),
  DotFile.home(name: 'asoundrc'),
  DotFile.home(name: 'bash_profile'),
  DotFile.home(name: 'bashrc'),
  DotFile.home(name: 'inputrc'),
  DotFile.home(name: 'vimrc'),
  DotFile.home(name: 'xinitrc'),
  DotFile.home(name: 'Xmodmap'),
];

void main() => install(files);
