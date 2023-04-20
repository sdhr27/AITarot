import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ai_tarot_plugin_platform_interface.dart';

/// An implementation of [AiTarotPluginPlatform] that uses method channels.
class MethodChannelAiTarotPlugin extends AiTarotPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ai_tarot_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
