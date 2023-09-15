import 'package:flutter/material.dart';
import 'package:rfid_app/keyDropdown.dart';
import 'package:rfid_app/addKey.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<DropdownMenuItem> ? items = [
    new DropdownMenuItem(child: Text('my room')),
    new DropdownMenuItem(child: Text('his room'))
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                children: <Widget>[
                  Text('Select a key: '),
                  KeyDropdown()
                ]
            )
        ),
        floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              FloatingActionButton.extended(
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