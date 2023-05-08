import '../Group/widgets/group_item_widget.dart';
import 'package:flutter/material.dart';

class GroupModel {
  String photo = "";
  String name = "";
  int membersCount = 0;
}

// ignore_for_file: must_be_immutable
class GroupScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Size size = WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;
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

  Widget buildGroups(GroupModel model) {
    return GroupItemWidget(
      photo: model.photo,
      name: model.name,
      membersCount: model.membersCount,
    );
  }

  double getVerticalSize(double px) {
    return ((px * height) / 844);
  }

  List<GroupModel> getchats() {
    List<GroupModel> mList = [];

    GroupModel model1 = GroupModel();
    model1.photo = 'assets/images/group1.jpg';
    model1.name = "IELTS 8";
    model1.membersCount = 16;

    GroupModel model2 = GroupModel();
    model2.photo = 'assets/images/group2.jpg';
    model2.name = "Intermediate";
    model2.membersCount = 23;

    GroupModel model3 = GroupModel();
    model3.photo = 'assets/images/group3.jpg';
    model3.name = "Elementary";
    model3.membersCount = 5;

    GroupModel model4 = GroupModel();
    model4.photo = 'assets/images/group4.jpg';
    model4.name = "IELTS";
    model4.membersCount = 50;

    GroupModel model5 = GroupModel();
    model5.photo = 'assets/images/group5.jpg';
    model5.name = "Pre-Intermediate";
    model5.membersCount = 11;

    GroupModel model6 = GroupModel();
    model6.photo = 'assets/images/group6.jpg';
    model6.name = "Intermediate";
    model6.membersCount = 9;

    GroupModel model7 = GroupModel();
    model7.photo = 'assets/images/group7.jpg';
    model7.name = "Advanced";
    model7.membersCount = 22;

    GroupModel model8 = GroupModel();
    model8.photo = 'assets/images/group8.jpg';
    model8.name = "Proficiency";
    model8.membersCount = 39;

    GroupModel model9 = GroupModel();
    model9.photo = 'assets/images/group9.jpg';
    model9.name = "TOEFL";
    model9.membersCount = 39;

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
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: getVerticalSize(4));
            },
            itemCount: 8,
            itemBuilder: (context, i) => buildGroups(getchats()[i]),
          )),
    );
  }
}
