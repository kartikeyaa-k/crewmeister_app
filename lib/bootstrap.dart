import 'dart:async';

import 'package:crewmeister_app/service_locator.dart';
import 'package:flutter/material.dart';

/// Bootstrap is responsible for any common setup and calls
/// [runApp] with the widget returned by [builder] in an error zone.
///
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await setupLocator();

      await locator.allReady().then((value) async {
        runApp(await builder());
      });
    },
    (error, stackTrace) {
      // Handle Crashlytics here
    },
  );
}
