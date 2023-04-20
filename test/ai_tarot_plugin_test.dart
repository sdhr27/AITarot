import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tarot_plugin/ai_tarot_plugin.dart';
import 'package:ai_tarot_plugin/ai_tarot_plugin_platform_interface.dart';
import 'package:ai_tarot_plugin/ai_tarot_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAiTarotPluginPlatform
    with MockPlatformInterfaceMixin
    implements AiTarotPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AiTarotPluginPlatform initialPlatform = AiTarotPluginPlatform.instance;

  test('$MethodChannelAiTarotPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAiTarotPlugin>());
  });

  test('getPlatformVersion', () async {
    AiTarotPlugin aiTarotPlugin = AiTarotPlugin();
    MockAiTarotPluginPlatform fakePlatform = MockAiTarotPluginPlatform();
    AiTarotPluginPlatform.instance = fakePlatform;

    expect(await aiTarotPlugin.getPlatformVersion(), '42');
  });
}
