import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatefulWidget {
  final String name;
  final String photo;
  final String latestChat;
  final int unreadMsgs;
  ChatItemWidget({
    required this.photo,
    required this.name,
    required this.latestChat,
    required this.unreadMsgs,
  });

  @override
  State<ChatItemWidget> createState() => _ChatItemWidgetState();
}

class _ChatItemWidgetState extends State<ChatItemWidget> {
  Size size = WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;

  double getHorizontalSize(double px) {
    return ((px * size.width) / 390);
  }

  get height {
    num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .viewPadding
        .top;
    num bottomBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .viewPadding
        .bottom;
    num screenHeight = size.height - statusBar - bottomBar;
    return screenHeight;
  }

  double getVerticalSize(double px) {
    return ((px * height) / 844);
  }

  double getSize(double px) {
    var height = getVerticalSize(px);
    var width = getHorizontalSize(px);
    if (height < width) {
      return height.toInt().toDouble();
    } else {
      return width.toInt().toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 18,
        top: 17,
        right: 18,
        bottom: 17,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
      ).copyWith(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            6,
          ),
        ),
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: Color(0xFFffffff),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xFFffffff),
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20,
                ),
              ),
            ),
            child: Container(
              height: getVerticalSize(50),
              width: getHorizontalSize(50),
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                border: Border.all(
                  color: Color(0xFFffffff),
                  width: getHorizontalSize(
                    1,
                  ),
                  strokeAlign: 1,
                ),
              ).copyWith(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    19,
                  ),
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.photo),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  // "Classroom 09",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF141416),
                    fontSize: getSize(14),
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    widget.latestChat,
                    // "Tanks!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF777e90),
                      fontSize: getSize(12),
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            child: widget.unreadMsgs != 0
                ? Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      //borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      widget.unreadMsgs > 1000
                          ? "+1k"
                          : widget.unreadMsgs.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Product Sans',
                      ),
                    ),
                  )
                : SizedBox(),
          )
        ],
      ),
    );
  }
}
