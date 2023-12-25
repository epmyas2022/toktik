import 'package:toctik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getVideoPostList(int page);

  Future<VideoPost> getVideoPost(String id);
}
