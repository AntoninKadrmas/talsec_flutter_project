import 'package:flutter_riverpod/flutter_riverpod.dart';

/// StateNotifier to manage the unofficial store warning
class UnofficialStoreNotifier extends StateNotifier<String?> {
  UnofficialStoreNotifier() : super(null);

  void setWarning(String warningMessage) {
    state = warningMessage;
  }
}

// Provider that exposes the notifier
final unofficialStoreProvider =
    StateNotifierProvider<UnofficialStoreNotifier, String?>(
      (ref) => UnofficialStoreNotifier(),
    );
