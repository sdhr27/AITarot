import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tarot_plugin/ai_tarot_plugin_method_channel.dart';

void main() {
  MethodChannelAiTarotPlugin platform = MethodChannelAiTarotPlugin();
  const MethodChannel channel = MethodChannel('ai_tarot_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
