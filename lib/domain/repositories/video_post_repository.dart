import 'package:toctik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getVideoPostList(int page);

  Future<VideoPost> getVideoPost(String id);
}
