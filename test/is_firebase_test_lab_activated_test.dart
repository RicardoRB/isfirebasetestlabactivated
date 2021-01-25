import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_firebase_test_lab_activated/is_firebase_test_lab_activated.dart';

void main() {
  const MethodChannel channel = MethodChannel('is_firebase_test_lab_activated');

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('isFirebaseTestLabActivated return false when is false', () async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return false;
    });
    expect(await IsFirebaseTestLabActivated.isFirebaseTestLabActivated, false);
  });

  test('isFirebaseTestLabActivated return true when is true', () async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    expect(await IsFirebaseTestLabActivated.isFirebaseTestLabActivated, true);
  });
}
