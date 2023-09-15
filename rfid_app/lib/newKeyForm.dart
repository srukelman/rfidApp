import 'package:flutter/material.dart';
import 'package:rfid_app/loadKeys.dart';
import 'package:rfid_app/key.dart' as rfid_key;
class NewKeyForm extends StatefulWidget{
  const NewKeyForm({super.key});

  @override
  NewKeyFormState createState(){
    return NewKeyFormState();
  }
}

class NewKeyFormState extends State<NewKeyForm>{
  final _formKey = GlobalKey<FormState>();
  final formController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: formController,
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please Enter A Name';
              }
              List<rfid_key.Key> keys = getKeys();
              for(rfid_key.Key key in keys) {
                if (key.getName() == value) {
                  return 'Key With Already Exists; Please Enter a Unique Name';
                }
              }
              return null;
            }
          ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
            onPressed: () {
            // Validate returns true if the form is valid, or false otherwise.
            if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Processing Data')),
              );
              addKey(formController.text, "code");
              writeKeys();
            }
          },
          child: Text('Submit'),
            ),
        ),
        ]
      )
    );
  }
  @override
  void dispose(){
    formController.dispose();
    super.dispose();
  }
}