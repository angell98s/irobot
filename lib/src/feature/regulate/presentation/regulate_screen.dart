import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/constants/text_styles.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class RegulateScreen extends StatelessWidget {
  const RegulateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<RegulateBoxState> regulateLst = [
      RegulateBoxState(title: context.loc.seeSocSup),
      RegulateBoxState(title: context.loc.posRea),
      RegulateBoxState(title: context.loc.actConDis),
      RegulateBoxState(title: context.loc.rumNegApp),
      RegulateBoxState(title: context.loc.ratCogDis, value: true),
      RegulateBoxState(title: context.loc.relPleDis),
      RegulateBoxState(title: context.loc.actHapWri),
    ];
    var ee = false;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.regula_modify.toUpperCase())),
      body: CustomScrollView(
        slivers: [
          ResponsiveSliverCenter(
            padding: const EdgeInsets.all(Sizes.p16),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.loc.videoCallRequest,
                      style: AppTextStyles.h1(context),
                    ),
                    gapH16,
                    Text(
                      context.loc.strategies,
                      style: AppTextStyles.h2(context),
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: regulateLst
                          .map((e) => Strategies(regulateBoxState: e))
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Strategies extends StatefulWidget {
  const Strategies({
    super.key,
    required this.regulateBoxState,
  });

  final RegulateBoxState regulateBoxState;

  @override
  State<Strategies> createState() => _Strategies();
}

class _Strategies extends State<Strategies> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () async => setState(() {
            active = !active;
          }),
          child: Row(
            children: [
              Text(
                '-',
                style: AppTextStyles.h3(context),
              ),
              gapW16,
              Expanded(
                child: Text(
                  widget.regulateBoxState.title,
                  style: AppTextStyles.h3(context),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        if (widget.regulateBoxState.value && active) const Youtube()
      ],
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
        autoPlay: false,
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

class RegulateBoxState {
  RegulateBoxState({
    required this.title,
    this.value = false,
  });
  final String title;
  bool value;
}
