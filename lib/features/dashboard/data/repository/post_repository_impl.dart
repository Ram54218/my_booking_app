import 'package:my_app/features/dashboard/data/post_remote_data/post_remote_data.dart';
import 'package:my_app/features/dashboard/domain/entity/post_entity.dart';
import 'package:my_app/features/dashboard/domain/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteData postRemoteData;

  PostRepositoryImpl(this.postRemoteData);

  @override
  Future<List<PostEntity>> getPostList() async {
    return await postRemoteData.fetchPostData();
  }
}
