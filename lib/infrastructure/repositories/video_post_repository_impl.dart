import 'package:toctik/domain/datasources/video_post_datasource.dart';
import 'package:toctik/domain/entities/video_post.dart';
import 'package:toctik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl({required this.videoPostDataSource});
  @override
  Future<VideoPost> getVideoPost(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPostList(int page) {
    return videoPostDataSource.getVideoPostList(page);
  }
}
