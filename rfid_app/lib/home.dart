import 'package:flutter/material.dart';
import 'package:rfid_app/keyDropdown.dart';
import 'package:rfid_app/addKey.dart';
import 'package:rfid_app/key.dart' as rfid_key;
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map data = {};
  List<DropdownMenuItem> ? items = [
    new DropdownMenuItem(child: Text('my room')),
    new DropdownMenuItem(child: Text('his room'))
  ];


  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.purple[500],
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                children: <Widget>[
                  Text('Select a key: '),
                  KeyDropdown(keys: data['keys']),
                ]
            )
        ),
        floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              FloatingActionButton.extended(
                heroTag: 'add btn',
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AddKey())
                    );
                  },
                  tooltip: 'add key',
                  icon: const Icon(Icons.add),
                  label: Text('Add Key')
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                heroTag: 'delete btn',
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AddKey())
                    );
                  },
                  tooltip: 'delete key',
                  icon: const Icon(Icons.delete),
                  label: Text('Delete Key')
              ),

            ]
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}