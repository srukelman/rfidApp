import 'package:flutter/material.dart';
import 'package:rfid_app/loadKeys.dart' as load_keys;
import 'package:rfid_app/key.dart' as rfid_key;
class KeyDropdown extends StatefulWidget{
  const KeyDropdown({super.key, required this.keys});

  final List<rfid_key.Key> keys;
  @override
  State<KeyDropdown> createState() => KeyDropdownState();
}
List<String> list = <String>['Select Key'];
class KeyDropdownState extends State<KeyDropdown>{

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    list = <String>['Select Key'];
    widget.keys.forEach((element) {
      list.add(element.getName());
    });
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}