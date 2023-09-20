import "dart:io";
import "package:path_provider/path_provider.dart";
import "package:rfid_app/key.dart" as rfid_key;

import "key.dart";

List<rfid_key.Key> _keys = [];

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
Future<File> get _localFile async {
  final path = await _localPath;
  print('$path/keys.txt');
  return File('$path/keys.txt');
}
Future<List<rfid_key.Key>> readKeys() async{
  File readFile = await _localFile;
  final contents = await readFile.readAsString();
  final splitted = contents.split(";");
  splitted.forEach((pair){
    if(pair.contains(":")){
      _keys.add(Key.fromString(pair));
    }
  });
  return _keys;
}

Future<List<rfid_key.Key>> writeKeys() async{
  File writeFile = await _localFile;
  String s = "";
  _keys.forEach((key){
    s += key.toString() + ";";
  });
  writeFile.writeAsString("$s");
  return _keys;
}

void addKey(String name, String rfid_code){
  _keys.add(Key(name, rfid_code));
}

List<rfid_key.Key> dropKey(String name){
  for(var i = 0; i < _keys.length; i++){
    if(name == _keys[i].getName()){
      _keys.remove(_keys[i]);
    }
  }
  return _keys;
}

List<rfid_key.Key> getKeys(){
  return _keys;
}

