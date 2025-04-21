import 'package:crewmeister_app/environment_config.dart';
import 'package:get_it/get_it.dart';
import 'package:crewmeister_core/crewmeister_core.dart';
import 'package:absence_manager/absence_manager.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Initialize ApiClient
  locator.registerLazySingleton<ApiClient>(
    () => ApiClient(baseUrl: EnvironmentConfig.baseUrl),
  );

  // Feature layer
  locator.registerLazySingleton<AbsenceRemoteDataSource>(
    () => AbsenceRemoteDataSourceImpl(locator<ApiClient>()),
  );

  locator.registerLazySingleton<AbsenceRepository>(
    () => AbsenceRepositoryImpl(locator<AbsenceRemoteDataSource>()),
  );

  locator.registerLazySingleton<GetAbsences>(
    () => GetAbsences(locator<AbsenceRepository>()),
  );

  locator.registerFactory<AbsenceCubit>(
    () => AbsenceCubit(locator<GetAbsences>()),
  );
}
