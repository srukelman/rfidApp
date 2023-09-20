import 'package:flutter/material.dart';
import 'package:rfid_app/loadKeys.dart' as load_keys;
import 'package:rfid_app/key.dart' as rfid_key;
class KeyDropdown extends StatefulWidget{
  const KeyDropdown({super.key, required this.keys});

  final List<rfid_key.Key> keys;
  @override
  State<KeyDropdown> createState() => KeyDropdownState();
}
List<rfid_key.Key> list = <rfid_key.Key>[rfid_key.Key('Select Key', 'null')];
class KeyDropdownState extends State<KeyDropdown>{

  rfid_key.Key dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    list = <rfid_key.Key>[rfid_key.Key('Select Key', 'null')];
    return DropdownButton<rfid_key.Key>(
        value: dropdownValue,
        items: list.map<DropdownMenuItem<rfid_key.Key>>((rfid_key.Key _key) {
          return DropdownMenuItem<rfid_key.Key>(
            value: _key,
            child: Text(_key.getName())
          );
        }).toList(),
        onChanged: (rfid_key.Key? value){
          setState(() {
            this.dropdownValue = value!;
          });
        },
    );
  }
}