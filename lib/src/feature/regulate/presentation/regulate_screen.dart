import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/localization/string.hardcode.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RegulateScreen extends StatelessWidget {
  const RegulateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.regula_modify.toUpperCase())),
      body: ResponsiveCenter(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Solicitud de video'.hardcoded),
                  gapH16,
                  const Text('Estrategias afsdasdkasl'),
                  const Youtube()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: true,
        loop: false,
      ),
    )
      ..onInit = () {
        _controller.loadVideoById(videoId: 'eu-2iWv_fCM');
      }
      ..onFullscreenChange = (isFullScreen) {
        print('${isFullScreen ? 'Entered' : 'Exited'} Fullscreen.');
      };
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      builder: (context, player) => Container(
        child: player,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
