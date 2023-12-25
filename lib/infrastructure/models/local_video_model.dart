import 'package:toctik/domain/entities/video_post.dart';

class LocalVideoModel {
  String caption;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        caption: json["caption"],
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
      );

  VideoPost toEntity() => VideoPost(
        caption: caption,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
