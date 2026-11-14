import 'package:flutter_test/flutter_test.dart';
import 'package:meu_app_flutter/meu_app_flutter.dart';
import 'package:meu_app_flutter/meu_app_flutter_platform_interface.dart';
import 'package:meu_app_flutter/meu_app_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMeuAppFlutterPlatform
    with MockPlatformInterfaceMixin
    implements MeuAppFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MeuAppFlutterPlatform initialPlatform = MeuAppFlutterPlatform.instance;

  test('$MethodChannelMeuAppFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMeuAppFlutter>());
  });

  test('getPlatformVersion', () async {
    MeuAppFlutter meuAppFlutterPlugin = MeuAppFlutter();
    MockMeuAppFlutterPlatform fakePlatform = MockMeuAppFlutterPlatform();
    MeuAppFlutterPlatform.instance = fakePlatform;

    expect(await meuAppFlutterPlugin.getPlatformVersion(), '42');
  });
}
