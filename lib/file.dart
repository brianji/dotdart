const _configPrefix = '/.config/';

class DotFile {
  final String name;
  final String directory;

  const DotFile.config({this.name, this.directory});

  const DotFile.home({this.name}) : directory = null;

  String get path => directory != null ? '$_configPrefix$directory/' : '/';

  String get link => '$path${directory == null ? '.$name' : name}';
}
