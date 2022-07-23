import 'package:flutter/material.dart';
import 'package:sky_net_chat/utils/colors.dart';
import 'package:sky_net_chat/utils/fonts.dart';

class AnimatedSkyChatWidget extends StatefulWidget {
  final Animation<double>? animation;

  final int index;
  const AnimatedSkyChatWidget({Key? key, this.animation, required this.index})
      : super(key: key);

  @override
  _AnimatedSkyChatWidgetState createState() => _AnimatedSkyChatWidgetState();
}

class _AnimatedSkyChatWidgetState extends State<AnimatedSkyChatWidget> {
  final List<String> fonts = [
    FontConstants.aboveRegular,
    FontConstants.alienRavager,
    FontConstants.alienRavagerItalic,
    FontConstants.astroSpace,
    FontConstants.conflictDrips,
    FontConstants.conflictLight,
    FontConstants.darkMode,
    FontConstants.halloweenNight,
    FontConstants.mechanismo,
    FontConstants.mechanismoRegular,
    FontConstants.noMercy,
    FontConstants.paintDropsRegular,
    FontConstants.robotInvaders,
    FontConstants.robotInvadersItalic
  ];
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: widget.animation!,
      axisAlignment: -1.0,
      axis: Axis.vertical,
      child: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hello World, This is Sky Net ChatBot",
                style: TextStyle(
                  fontSize: 18,
                  color: gold,
                  fontFamily: fonts[widget.index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
