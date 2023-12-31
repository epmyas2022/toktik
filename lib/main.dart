import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toctik/config/theme/app_theme.dart';
import 'package:toctik/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toctik/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:toctik/presentation/discover/screens/discover_screen.dart';
import 'package:toctik/presentation/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPostRepositoryImpl videoPostRepository = VideoPostRepositoryImpl(
      videoPostDataSource: LocalVideoDataSourceImpl(),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videoPostRepository: videoPostRepository)
                ..fetchVideosNext(),
        )
      ],
      child: MaterialApp(
        title: 'Toktik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
