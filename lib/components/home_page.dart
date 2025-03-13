import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talsec_flutter_project/utils/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(unofficialStoreProvider);
    return Center(child: Text(text ?? "No callback yet"));
  }
}
