import 'package:my_app/features/dashboard/domain/entity/post_entity.dart';

abstract class PostRepository{
  Future<List<PostEntity>> getPostList();
}