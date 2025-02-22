import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../api/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.initDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //

  //
  // // tafseer
  // getIt.registerLazySingleton<TafseerRepo>(() => TafseerRepo(getIt()));
  // getIt.registerFactory<TafseerCubit>(() => TafseerCubit(getIt()));
}
