import 'package:flutter/material.dart';
import 'package:talsec_flutter_project/utils/initializer.dart';
import 'package:talsec_flutter_project/widgets/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talsec_flutter_project/theme/theme.dart';
import 'package:talsec_flutter_project/theme/util.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeTalsec();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Roboto Mono", "Roboto");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      supportedLocales: [
        Locale('en', ''), // English
      ],
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate, // This is the generated localization delegate
      ],
      home: const HomePage(),
    );
  }
}
