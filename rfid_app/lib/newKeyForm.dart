import 'package:flutter/material.dart';

class NewKeyForm extends StatefulWidget{
  const NewKeyForm({super.key});

  @override
  NewKeyFormState createState(){
    return NewKeyFormState();
  }
}

class NewKeyFormState extends State<NewKeyForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please Enter A Name';
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
            }
          },
          child: Text('Submit'),
            ),
        ),
        ]
      )
    );
  }
}