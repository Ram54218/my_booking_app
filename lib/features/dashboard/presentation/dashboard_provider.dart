import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/core/di/service_locator.dart';
import 'package:my_app/features/dashboard/domain/entity/post_entity.dart';
import 'package:my_app/features/dashboard/domain/repository/post_repository.dart';
import 'package:my_app/features/dashboard/domain/usecases/post_use_case.dart';
 


final postProvider = Provider<PostUseCase>((ref) => PostUseCase(sl<PostRepository>()));

final postListProvider = FutureProvider<List<PostEntity>>((ref) async{
  return ref.watch(postProvider).call();
});