import 'package:flutter/material.dart';
import 'package:freerasp/freerasp.dart';
import 'package:talsec_flutter_project/components/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeTalsec();

  runApp(const ProviderScope(child: HomePage()));
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
    iosConfig: IOSConfig(
      bundleIds: ['com.aheaditec.freeraspExample'],
      teamId: 'M8AK35...',
    ),
    watcherMail: 'your_mail@example.com',
    isProd: true,
  );

  await Talsec.instance.start(config);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}
