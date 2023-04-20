
import 'ai_tarot_plugin_platform_interface.dart';

class AiTarotPlugin {
  Future<String?> getPlatformVersion() {
    return AiTarotPluginPlatform.instance.getPlatformVersion();
  }
}
