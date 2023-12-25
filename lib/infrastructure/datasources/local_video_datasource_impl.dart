import 'package:toctik/domain/datasources/video_post_datasource.dart';
import 'package:toctik/domain/entities/video_post.dart';
import 'package:toctik/infrastructure/models/local_video_model.dart';
import 'package:toctik/shared/data/local_video_data.dart';

class LocalVideoDataSourceImpl implements VideoPostDataSource {
  @override
  Future<VideoPost> getVideoPost(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPostList(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    List<VideoPost> newVideos = videoPost
        .map((video) => LocalVideoModel.fromJson(video).toEntity())
        .toList();

    return newVideos;
  }
}
