import 'package:flutter/material.dart';
import 'package:rfid_app/loadKeys.dart';
import 'newKeyForm.dart';

class AddKey extends StatefulWidget{
  const AddKey({super.key});
  @override
  State<AddKey> createState() => AddKeyState();
}
class AddKeyState extends State<AddKey>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Add Key')
      ),
      body: Center(
          child:
              NewKeyForm()
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

          Navigator.pop(context);
        },
          tooltip: 'create key',
          icon: const Icon(Icons.check),
          label: Text('Create Key')
      ),

    );
  }
}