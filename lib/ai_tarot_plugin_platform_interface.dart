import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ai_tarot_plugin_method_channel.dart';

abstract class AiTarotPluginPlatform extends PlatformInterface {
  /// Constructs a AiTarotPluginPlatform.
  AiTarotPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AiTarotPluginPlatform _instance = MethodChannelAiTarotPlugin();

  /// The default instance of [AiTarotPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelAiTarotPlugin].
  static AiTarotPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AiTarotPluginPlatform] when
  /// they register themselves.
  static set instance(AiTarotPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
