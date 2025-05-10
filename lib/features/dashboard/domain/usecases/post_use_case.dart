import 'package:my_app/features/dashboard/domain/entity/post_entity.dart';
import 'package:my_app/features/dashboard/domain/repository/post_repository.dart';

class PostUseCase {
  final PostRepository postRepository;

  PostUseCase(this.postRepository);

  Future<List<PostEntity>> call() => postRepository.getPostList();
}
