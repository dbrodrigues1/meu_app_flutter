import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'meu_app_flutter_platform_interface.dart';

/// An implementation of [MeuAppFlutterPlatform] that uses method channels.
class MethodChannelMeuAppFlutter extends MeuAppFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('meu_app_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
