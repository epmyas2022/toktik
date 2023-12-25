import 'package:flutter/material.dart';
import 'package:toctik/domain/entities/video_post.dart';
import 'package:toctik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});
  bool isFetching = true;
  List<VideoPost> videos = [];
  Future<void> fetchVideosNext() async {
    List<VideoPost> newVideos = await videoPostRepository.getVideoPostList(1);
    videos.addAll(newVideos);
    isFetching = false;
    notifyListeners();
  }
}
