import '../Chats/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lango/Chats/Private_chat/Private_Chat.dart';

class ChatModel {
  String photo = "";
  String name = "";
  String latestChat = "";
  int unreadMsgs = 0;
}

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController groupController = TextEditingController();

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

  Widget buildChats(ChatModel model) {
    return ChatItemWidget(
      photo: model.photo,
      name: model.name,
      latestChat: model.latestChat,
      unreadMsgs: model.unreadMsgs,
    );
  }

  List<ChatModel> getchats() {
    List<ChatModel> mList = [];

    ChatModel model1 = ChatModel();
    model1.photo = 'assets/images/boy1.jpg';
    model1.name = "Samir";
    model1.latestChat = "Hi";
    model1.unreadMsgs = 1;

    ChatModel model2 = ChatModel();
    model2.photo = 'assets/images/boy2.jpg';
    model2.name = "Sam";
    model2.latestChat = "tanks!";
    model2.unreadMsgs = 128;

    ChatModel model3 = ChatModel();
    model3.photo = 'assets/images/boy3.jpg';
    model3.name = "Tony";
    model3.latestChat = "Goodbye";
    model3.unreadMsgs = 0;

    ChatModel model4 = ChatModel();
    model4.photo = 'assets/images/girl1.jpg';
    model4.name = "Sara";
    model4.latestChat = "Good!";
    model4.unreadMsgs = 138;

    ChatModel model5 = ChatModel();
    model5.photo = 'assets/images/boy4.jpg';
    model5.name = "Hank";
    model5.latestChat = "GN";
    model5.unreadMsgs = 3;

    ChatModel model6 = ChatModel();
    model6.photo = 'assets/images/girl2.jpg';
    model6.name = "Lily";
    model6.latestChat = "Great!";
    model6.unreadMsgs = 1024;

    ChatModel model7 = ChatModel();
    model7.photo = 'assets/images/boy5.jpg';
    model7.name = "Bob";
    model7.latestChat = "Damn";
    model7.unreadMsgs = 1;

    ChatModel model8 = ChatModel();
    model8.photo = 'assets/images/girl3.jpg';
    model8.name = "Suzanne";
    model8.latestChat = "I'll see you";
    model8.unreadMsgs = 0;

    ChatModel model9 = ChatModel();
    model9.photo = 'assets/images/girl4.jpg';
    model9.name = "Olivia";
    model9.latestChat = "call me";
    model9.unreadMsgs = 2;

    mList.add(model1);
    mList.add(model2);
    mList.add(model3);
    mList.add(model4);
    mList.add(model5);
    mList.add(model6);
    mList.add(model7);
    mList.add(model8);
    mList.add(model9);

    return mList;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: getHorizontalSize(342),
          margin: EdgeInsets.only(left: 24, right: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getHorizontalSize(16))),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: getVerticalSize(4));
              },
              itemCount: getchats().length,
              itemBuilder: (context, i) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrivateChatScreen()));
                  },
                  child: buildChats(getchats()[i])),
            )
          ])),
    ));
  }
}
