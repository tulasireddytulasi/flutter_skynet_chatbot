import 'package:flutter/material.dart';
import 'package:sky_net_chat/pages/home_page/widgets/animated_skychat.dart';
import 'package:sky_net_chat/utils/colors.dart';
import 'package:sky_net_chat/utils/functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<AnimatedListState> _animationKey =
      GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lynxWhite,
      body: Center(
        child: Container(
          width: getCardWidth(screenWidth: screenWidth),
          margin: screenWidth > 700 ? const EdgeInsets.all(20) : null,
          child: LayoutBuilder(builder: (context, constraints) {
            return screenWidth > 700
                ? Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: skyNetChat(maxWidth: constraints.maxWidth),
                  )
                : skyNetChat(maxWidth: constraints.maxWidth);
          }),
        ),
      ),
    );
  }

  Widget skyNetChat({required double maxWidth}) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: maxWidth,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: screenWidth > 700
            ? const BorderRadius.all(Radius.circular(20))
            : null,
        color: white,
        // image: DecorationImage(
        //   image: AssetImage(CHAT_BACKGROUND_IMG),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Column(
        children: <Widget>[
          // if (screenWidth < 700) NewChatHeader(hasBorder: false),
          // if (screenWidth >= 700) NewChatHeader(),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: AnimatedList(
                key: _animationKey,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                reverse: true,
                initialItemCount: 13,
                itemBuilder: (context, index, animation) {
                  return Column(
                    children: [
                      AnimatedSkyChatWidget(
                        animation: animation,
                        index: index,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
