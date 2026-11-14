import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'meu_app_flutter_method_channel.dart';

abstract class MeuAppFlutterPlatform extends PlatformInterface {
  /// Constructs a MeuAppFlutterPlatform.
  MeuAppFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static MeuAppFlutterPlatform _instance = MethodChannelMeuAppFlutter();

  /// The default instance of [MeuAppFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelMeuAppFlutter].
  static MeuAppFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MeuAppFlutterPlatform] when
  /// they register themselves.
  static set instance(MeuAppFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
