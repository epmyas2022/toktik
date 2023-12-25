import 'package:flutter/material.dart';
import 'package:toctik/domain/entities/video_post.dart';
import 'package:toctik/infrastructure/models/local_video_model.dart';
import 'package:toctik/shared/data/local_video_data.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: repository, dataSource
  bool isFetching = true;
  List<VideoPost> videos = [];
  Future<void> fetchVideosNext() async {
    //await Future.delayed(const Duration(seconds: 2));
    List<VideoPost> newVideos = videoPost
        .map((video) => LocalVideoModel.fromJson(video).toEntity())
        .toList();

    videos.addAll(newVideos);
    isFetching = false;
    notifyListeners();
  }
}
