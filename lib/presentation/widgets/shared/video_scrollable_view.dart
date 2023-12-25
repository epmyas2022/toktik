import 'package:flutter/material.dart';
import 'package:toctik/domain/entities/video_post.dart';
import 'package:toctik/presentation/widgets/shared/video_buttons.dart';
import 'package:toctik/presentation/widgets/video/fullscreen_playaer.dart';

class VideoScrollableview extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableview({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                  videoUrl: video.videoUrl, caption: video.caption),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: video),
            )
          ],
        );
      },
    );
  }
}
