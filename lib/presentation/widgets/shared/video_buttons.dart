import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toctik/config/helpers/human_formats.dart';
import 'package:toctik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const _CustomIconButton(
          icon: Icons.favorite, color: Colors.red, value: 11),
      const SizedBox(height: 20),
      const _CustomIconButton(
          icon: Icons.remove_red_eye_outlined,
          color: Colors.white,
          value: 10000),
      const SizedBox(height: 20),
      SpinPerfect(
          infinite: true,
          child: const _CustomIconButton(
              icon: Icons.play_circle_outline, color: Colors.white))
    ]);
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final int value;

  const _CustomIconButton({
    required this.icon,
    required this.color,
    this.value = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(icon: Icon(icon, size: 30, color: color), onPressed: () {}),
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
