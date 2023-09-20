import 'package:flutter/material.dart';
import 'package:rfid_app/keyDropdown.dart';
import 'package:rfid_app/loadKeys.dart';
import 'package:rfid_app/key.dart' as rfid_key;
class DeleteKeyPage extends StatefulWidget {
  const DeleteKeyPage({super.key});

  @override
  State<DeleteKeyPage> createState() => _DeleteKeyPageState();
}

class _DeleteKeyPageState extends State<DeleteKeyPage> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    KeyDropdown dropdown = KeyDropdown(keys: data['keys']);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.purple[500],
        title: Text('Delete Key')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Select Key to Delete: '),
            dropdown,
            Padding(
              padding: EdgeInsets.symmetric(vertical:16),
              child: ElevatedButton(
                  onPressed: (){
                  },
                  child:Text('Delete')
              )
            )
          ],
        )
      )
    );
  }
}
