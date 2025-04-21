import 'dart:async';

import 'package:absence_manager/absence_manager.dart';
import 'package:crewmeister_app/service_locator.dart';
import 'package:crewmeister_core/crewmeister_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CrewmeisterApp extends StatelessWidget {
  const CrewmeisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crewmeister Absence Manager',
      debugShowCheckedModeBanner: false,
      theme: appLightTheme, // from core package
      darkTheme: appDarkTheme, // from core package
      locale: const Locale('en'),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AbsenceFilterCubit()),

          BlocProvider(
            create: (_) {
              final cubit = locator<AbsenceCubit>();
              Future.microtask(() => unawaited(cubit.loadAbsences()));
              return cubit;
            },
          ),
        ],
        child: const AbsenceListPage(), // from feature package
      ),
    );
  }
}
