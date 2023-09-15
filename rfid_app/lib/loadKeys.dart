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
void readKeys() async{
  File readFile = await _localFile;
  final contents = await readFile.readAsString();
  final splitted = contents.split(";");
  splitted.forEach((pair){
    if(pair.contains(":")){
      _keys.add(Key.fromString(pair));
    }
  });
}

void writeKeys() async{
  File writeFile = await _localFile;
  String s = "";
  _keys.forEach((key){
    s += key.toString() + ";";
  });
  writeFile.writeAsString("$s");
}

void addKey(String name, String rfid_code){
  _keys.add(Key(name, rfid_code));
}


List<Key> getKeys(){
  return _keys;
}

