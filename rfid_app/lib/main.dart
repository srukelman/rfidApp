import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rfid_app/addKey.dart';
import 'package:rfid_app/keyDropdown.dart';
import 'package:rfid_app/loadKeys.dart';
import 'package:rfid_app/home.dart';
import 'package:rfid_app/loadingPage.dart';
import 'package:rfid_app/newKeyForm.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => loadingPage(),
      '/home':(context) => MyHomePage(title: 'RFID APP', keys: [],),
      '/addkey':(context) => NewKeyForm(),

    },
  )
);



