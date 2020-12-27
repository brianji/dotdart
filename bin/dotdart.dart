import 'package:dotdart/dotdart.dart';
import 'package:dotdart/file.dart';

const files = [
  //DotFile.config(directory: 'bspwm', name: 'bspwmrc'),
  //DotFile.config(directory: 'dunst', name: 'dunstrc'),
  //DotFile.config(directory: 'kitty', name: 'kitty.conf'),
  //DotFile.config(directory: 'picom', name: 'picom.conf'),
  //DotFile.config(directory: 'rofi', name: 'config.rasi'),
  //DotFile.config(directory: 'sxhkd', name: 'sxhkdrc'),
  //DotFile.home(name: 'Xmodmap'),
  //DotFile.home(name: 'asoundrc'),
  //DotFile.home(name: 'xinitrc'),
  DotFile.config(directory: 'pacman', name: 'makepkg.conf'),
  DotFile.home(name: 'bash_profile'),
  DotFile.home(name: 'bashrc'),
  DotFile.home(name: 'inputrc'),
  DotFile.home(name: 'vimrc'),
];

void main() => install(files);
