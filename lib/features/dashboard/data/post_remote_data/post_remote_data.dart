import 'package:my_app/core/network/dio_client.dart';
import 'package:my_app/features/dashboard/data/model/post_model.dart';

class PostRemoteData {
  final DioClient dioClient;

  PostRemoteData(this.dioClient);

  Future<List<PostModel>> fetchPostData() async {
    await Future.delayed(const Duration(seconds: 5));
    final response = await dioClient.dio.get('/posts');
   return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
  }
}
