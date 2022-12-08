# is_firebase_test_lab_activated

A flutter plugin to know if Firebase Test Lab is activated

## Getting Started

This project is a starting point for a Flutter
[Firebase official documentation](https://firebase.google.com/docs/test-lab/android/android-studio#modify_instrumented_test_behavior_for),
where they explain how to know whether the app is running in Firebase Test Lab


## Setup

1. Add `is_firebase_test_lab_activated` to your `pubspec.yaml`:

   ```yaml
   dependencies:
     is_firebase_test_lab_activated: ^2.0.1
   ```
2. Import the package

  ```dart
   import 'package:is_firebase_test_lab_activated/is_firebase_test_lab_activated.dart';
   ```

3. Now you can check whether the app is running in Firebase Test Lab

  ```dart
   final bool isFirebaseTestLabActivated = await IsFirebaseTestLabActivated.isFirebaseTestLabActivated;
   ```

