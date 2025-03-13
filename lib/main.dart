import 'package:flutter/material.dart';
import 'package:freerasp/freerasp.dart';
import 'package:talsec_flutter_project/components/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talsec_flutter_project/utils/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initializeTalsec();
  runApp(const ProviderScope(child: MyApp()));
}

/// Initialize Talsec configuration for Android and iOS
Future<void> _initializeTalsec() async {
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

void _initializeCallback(WidgetRef ref) {
  final callback = ThreatCallback(
    onUnofficialStore: () {
      ref
          .read(unofficialStoreProvider.notifier)
          .setWarning(
            "Warning: This app was not installed from the official source (Google Play Store). It may have been tampered with by attackers. We strongly recommend uninstalling it immediately for you security.",
          );
    },
  );
  // Attaching listener
  Talsec.instance.attachListener(callback);
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    _initializeCallback(ref);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("freeRASP Demo")),
        body: const HomePage(),
      ),
    );
  }
}
