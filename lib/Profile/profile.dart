import 'package:flutter/material.dart';
//import 'package:lango/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lango/Chats/Private_chat/Private_Chat.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFffffff),
        appBar: AppBar(
          title: const Text(
            "Detail",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Product Sans",
              fontSize: 20,
            ),
          ),
          elevation: 0,
          toolbarHeight: getVerticalSize(105),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            height: getVerticalSize(
              104,
            ),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(
                  0.8,
                  1,
                ),
                end: Alignment(
                  0.8,
                  0,
                ),
                colors: [
                  Color(0xff00ffffff),
                  Color(0xffb2ffffff),
                  Color(0xfffffff),
                ],
              ),
            ),
          ),
          leadingWidth: 72,
          //leading: leading,

          titleSpacing: 0,
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(24),
                top: getVerticalSize(22),
                right: getHorizontalSize(24),
                bottom: getVerticalSize(24),
              ),
              child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SettingsScreen(),
                  //   ),
                  // );
                },
                icon: SvgPicture.asset('assets/images/img_settings.svg'),
              ),
            )
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(getHorizontalSize(62)),
                child: Image.asset(
                  'assets/images/img_rectangle5658_124x124.png',
                  height: getSize(124),
                  width: getSize(124),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: getHorizontalSize(20)),
                  child: Text(
                    "User 01",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getSize(32),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              Text(
                "Student",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color(0xFFa3abb2),
                  fontSize: getSize(14),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(40),
                    top: getVerticalSize(36),
                    right: getHorizontalSize(27),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              bottom: getVerticalSize(1),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "7",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: const Color(0xFFc3c7ca),
                                      fontSize: getSize(16),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "post",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: const Color(0xFFa3abb2),
                                      fontSize: getSize(14),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ])),
                        const Spacer(flex: 53),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "150",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: const Color(0xFFc3c7ca),
                                  fontSize: getSize(16),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "following",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: const Color(0xFFa3abb2),
                                  fontSize: getSize(14),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ]),
                        const Spacer(flex: 46),
                        Padding(
                            padding: EdgeInsets.only(
                              bottom: getVerticalSize(1),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "250",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: const Color(0xFFc3c7ca),
                                      fontSize: getSize(16),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "follower",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: const Color(0xFFa3abb2),
                                      fontSize: getSize(14),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ]))
                      ])),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(30),
                  top: getVerticalSize(30),
                  right: getHorizontalSize(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        fixedSize: Size(
                          getHorizontalSize(158),
                          getVerticalSize(50),
                        ),
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(10),
                          top: getVerticalSize(10),
                          right: getHorizontalSize(10),
                          bottom: getVerticalSize(10),
                        ),
                        backgroundColor: const Color(0xFF303772ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              15.00,
                            ),
                          ),
                        ),
                      ),
                      child: Text(
                        "follow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF3772ff),
                          fontSize: getSize(18),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            1.50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(14),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrivateChatScreen(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          fixedSize: Size(
                            getHorizontalSize(158),
                            getVerticalSize(50),
                          ),
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(10),
                            top: getVerticalSize(10),
                            right: getHorizontalSize(10),
                            bottom: getVerticalSize(10),
                          ),
                          backgroundColor: Color(0xFF99171f26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                15.00,
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          "massage",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFFffffff),
                            fontSize: getSize(18),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: getVerticalSize(
                              1.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
