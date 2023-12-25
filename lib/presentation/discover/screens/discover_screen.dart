import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toctik/presentation/providers/discover_provider.dart';
import 'package:toctik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
        body: discoverProvider.isFetching
            ? const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : VideoScrollableview(videos: discoverProvider.videos));
  }
}
