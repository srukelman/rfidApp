import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rfid_app/loadKeys.dart';
import 'package:rfid_app/key.dart' as rfid_key;
class loadingPage extends StatefulWidget {
  const loadingPage({super.key});

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  void setupKeys() async{
    List<rfid_key.Key> keys = await readKeys();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'title': 'RFID',
      'keys': keys,
    });
  }
  @override initState(){
    super.initState();
    setupKeys();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
        body: Center(
            child: SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}
