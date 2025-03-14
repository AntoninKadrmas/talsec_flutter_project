import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talsec_flutter_project/utils/initializer.dart';
import 'package:talsec_flutter_project/utils/provider.dart';
import '../generated/l10n.dart'; // The generated localization file

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    initializeCallback(() {
      ref
          .read(unofficialStoreProvider.notifier)
          .setWarning(S.of(context).unofficialStoreWarning);
    });
    final text = ref.watch(unofficialStoreProvider);
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).appBarTile)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text ?? S.of(context).unofficialStoreWarningMissing,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
