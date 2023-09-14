import "dart:io";
import "package:path_provider/path_provider.dart";

import "key.dart";

List<Key> _keys = [];

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/keys.txt');
}
void readKeys(){

}

void writeKeys(){

}

List<Key> getKeys(){
  return _keys;
}

