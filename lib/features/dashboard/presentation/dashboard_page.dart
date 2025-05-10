import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/features/dashboard/domain/entity/post_entity.dart';
import 'package:my_app/features/dashboard/presentation/dashboard_provider.dart';

class DashBoardPage extends ConsumerWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _bodyWidget(context, ref),
    );
  }

  _bodyWidget(BuildContext context, WidgetRef ref) {
    final list = ref.watch(postListProvider);
    return list.when(data: (list) {
      List<PostEntity> postList = list.map((e) => e).toList();
      return ListView.builder(
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return Text(postList[index].title);
          });
    }, error: (error, s) {
      return Center(child: Text(error.toString()));
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
