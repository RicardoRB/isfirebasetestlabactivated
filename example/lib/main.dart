import 'dart:async';

import 'package:flutter/material.dart';
import 'package:is_firebase_test_lab_activated/is_firebase_test_lab_activated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isFirebaseTestLabActivated = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    final bool isFirebaseTestLabActivated =
        await IsFirebaseTestLabActivated.isFirebaseTestLabActivated;

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _isFirebaseTestLabActivated = isFirebaseTestLabActivated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IsFirebaseTestLabActivated Plugin'),
        ),
        body: Center(
          child: Text(
              'Is Firebase Test Lab Activated?: $_isFirebaseTestLabActivated\n'),
        ),
      ),
    );
  }
}
