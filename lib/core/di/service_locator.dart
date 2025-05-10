import 'package:get_it/get_it.dart';
import 'package:my_app/core/network/dio_client.dart';
import 'package:my_app/features/dashboard/data/post_remote_data/post_remote_data.dart';
import 'package:my_app/features/dashboard/data/repository/post_repository_impl.dart';
import 'package:my_app/features/dashboard/domain/repository/post_repository.dart';
import 'package:my_app/features/dashboard/domain/usecases/post_use_case.dart';

final sl = GetIt.instance;

initGetIt() {
  sl.registerLazySingleton(() => DioClient());
  sl.registerLazySingleton(() => PostRemoteData(sl<DioClient>()));
  sl.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(sl<PostRemoteData>()));
  sl.registerLazySingleton(() => PostUseCase(sl<PostRepository>()));
}
