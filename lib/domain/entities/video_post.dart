class VideoPost {
  String caption;
  String videoUrl;
  int likes;
  int views;

  VideoPost({
   required this.caption,
   required this.videoUrl,
    this.likes =0,
    this.views =0,
  });
}
