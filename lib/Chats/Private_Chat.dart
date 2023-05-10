import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrivateChatScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 60),
            child: Column(
              children: [
                Container(
                  width: getHorizontalSize(
                    294,
                  ),
                  margin: EdgeInsets.only(
                    left: 60,
                    right: 36,
                  ),
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 16,
                    right: 24,
                    bottom: 16,
                  ),
                  decoration:
                      BoxDecoration(color: Color(0xFF3657ff), boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ]).copyWith(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          16,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          6,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          16,
                        ),
                      ),
                      bottomRight: Radius.circular(
                        getHorizontalSize(
                          16,
                        ),
                      ),
                    ),
                  ),
                  child: Container(
                    width: getHorizontalSize(
                      235,
                    ),
                    margin: EdgeInsets.only(
                      top: 2,
                      right: 10,
                    ),
                    child: Text(
                      "Minim dolor in amet nulla laboris enim dolore consequat. Minim dolo...",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFFffffff),
                        fontSize: getSize(14),
                        fontFamily: 'Product Sans Medium',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12,
                    top: 24,
                    right: 24,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.only(
                          bottom: 112,
                        ),
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
                              16,
                            ),
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            32,
                          ),
                          width: getSize(
                            32,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            border: Border.all(
                              color: Color(0xFFffffff),
                              width: getHorizontalSize(
                                1,
                              ),
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                          ).copyWith(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                    child: Container(
                                      height: height,
                                      width: size.width,
                                      child: SvgPicture.asset(
                                        'assets/images/img_user.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 16,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  6,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  16,
                                ),
                              ),
                              bottomLeft: Radius.circular(
                                getHorizontalSize(
                                  16,
                                ),
                              ),
                              bottomRight: Radius.circular(
                                getHorizontalSize(
                                  16,
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  306,
                                ),
                                padding: EdgeInsets.only(
                                  left: 24,
                                  top: 16,
                                  right: 24,
                                  bottom: 16,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: const Offset(5.0, 5.0),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ]).copyWith(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                    bottomRight: Radius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        235,
                                      ),
                                      margin: EdgeInsets.only(
                                        top: 2,
                                        right: 22,
                                      ),
                                      child: Text(
                                        "Minim dolor in amet nulla laboris enim dolore consequat. Minim dolor...",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color(0xFF141416),
                                          fontSize: getSize(14),
                                          fontFamily: 'Product Sans Medium',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  306,
                                ),
                                margin: EdgeInsets.only(
                                  top: 8,
                                ),
                                padding: EdgeInsets.only(
                                  left: 24,
                                  top: 19,
                                  right: 24,
                                  bottom: 19,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: const Offset(5.0, 5.0),
                                        blurRadius: 10,
                                        spreadRadius: 2,
                                      ),
                                    ]).copyWith(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                    bottomRight: Radius.circular(
                                      getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Minim dolor in amet nulla...",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xFF141416),
                                        fontSize: getSize(14),
                                        fontFamily: 'Product Sans Medium',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              margin: EdgeInsets.only(
                top: 32,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ]).copyWith(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(
                  right: 12,
                  left: 12,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFf4f5f6),
                ).copyWith(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      9,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 5,
                          bottom: 1,
                          right: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Reply comment",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _pickFile,
                      icon: SvgPicture.asset(
                          'assets/images/img_trash_gray_200.svg'),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.only(
                        left: 12,
                      ),
                      color: Color(0xFFe6e8ec),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12,
                          ),
                        ),
                      ),
                      child: Container(
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Color(0xFFe6e8ec),
                        ).copyWith(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                                'assets/images/img_arrowup_white_a700.svg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

void _pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
}
