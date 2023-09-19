import 'package:flutter/material.dart';
import 'package:rfid_app/keyDropdown.dart';
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
            KeyDropdown(keys: data['keys']),
            Padding(
              padding: EdgeInsets.symmetric(vertical:16),
              child: ElevatedButton(
                  onPressed: (){},
                  child:Text('Delete')
              )
            )
          ],
        )
      )
    );
  }
}
