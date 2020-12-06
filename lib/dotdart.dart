import 'dart:io';

import 'package:ansicolor/ansicolor.dart';

import 'file.dart';

const _dotDirectory = 'dot';

void install(List<DotFile> files) {
  final cyan = AnsiPen()..cyan(bold: true);
  final red = AnsiPen()..red();
  final green = AnsiPen()..green();
  final blue = AnsiPen()..blue();

  print(cyan('Installing dot files:'));
  final homePrefix = Platform.environment['HOME'];
  final dotPath = Directory(_dotDirectory).absolute.path;

  files.forEach((f) async {
    final linkPath = '$homePrefix${f.link}';
    print('${red(f.name)} ${green('=>')} ${blue(linkPath)}');

    final link = Link(linkPath);
    final exists = await link.exists();
    if (exists) await link.delete();
    await link.create('$dotPath/${f.name}', recursive: true);
  });
}
