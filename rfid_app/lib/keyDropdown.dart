import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyDropdown extends StatefulWidget{
  const KeyDropdown({super.key});
  @override
  State<KeyDropdown> createState() => KeyDropdownState();
}
List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class KeyDropdownState extends State<KeyDropdown>{

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
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