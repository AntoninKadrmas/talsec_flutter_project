import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freerasp/freerasp.dart';
import 'package:talsec_flutter_project/utils/provider.dart';

/// Initialize Talsec configuration for Android and iOS
Future<void> initializeTalsec() async {
  final config = TalsecConfig(
    androidConfig: AndroidConfig(
      packageName: 'com.aheaditec.freeraspExample',
      signingCertHashes: ['AKoRuyLMM91E7lX/Zqp3u4jMmd0A7hH/Iqozu0TMVd0='],
      supportedStores: ['com.sec.android.app.samsungapps'],
      malwareConfig: MalwareConfig(
        blacklistedPackageNames: ['com.aheaditec.freeraspExample'],
        suspiciousPermissions: [
          ['android.permission.CAMERA'],
          ['android.permission.READ_SMS', 'android.permission.READ_CONTACTS'],
        ],
      ),
    ),
    watcherMail: 'kadrmas.antonin@gmail.com',
    isProd: true,
  );

  await Talsec.instance.start(config);
}

void initializeCallback(WidgetRef ref, String warning) {
  final callback = ThreatCallback(
    onUnofficialStore: () {
      ref.read(unofficialStoreProvider.notifier).setWarning(warning);
    },
  );
  // Attaching listener
  Talsec.instance.attachListener(callback);
}
