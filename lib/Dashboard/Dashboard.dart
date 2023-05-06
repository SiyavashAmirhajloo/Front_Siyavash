import 'package:flutter/material.dart';
import 'package:lango/Feed/Feed.dart';
import 'package:lango/School/School.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Constance/Constance.dart';

import '../Chats/Chat_Dashboard.dart';
import 'Coin_Pack.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<Dashboard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          index == 0
              ? DashboardScreen()
              : index == 1
                  ? School()
                  : index == 2
                      ? Feed()
                      : index == 3
                          ? ChatDashboard()
                          : Coin_Pack(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 70 + MediaQuery.of(context).padding.bottom,
              decoration: BoxDecoration(
                color: AppTheme.isLightTheme
                    ? Color(0xFFffffff)
                    : HexColor("#111827"),
                border: Border.all(
                    color: AppTheme.isLightTheme
                        ? HexColor("#F4F5F6")
                        : Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.isLightTheme
                        ? Color.fromARGB(66, 181, 178, 178)
                        : Colors.transparent,
                    offset: const Offset(
                      1,
                      1,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 0
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i1
                            : ConstanceData.nav_i1_d,
                        height: 26,
                        color: index == 0
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 1
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i2
                            : ConstanceData.nav_i2_d,
                        height: 26,
                        color: index == 1
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 2
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i3
                            : ConstanceData.nav_i3_d,
                        height: 26,
                        color: index == 2
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 3
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i4
                            : ConstanceData.nav_i4_d,
                        height: 26,
                        color: index == 3
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 4
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i5
                            : ConstanceData.nav_i5_d,
                        height: 26,
                        color: index == 4
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 18,
          right: 18,
          top: MediaQuery.of(context).padding.top + 16,
          bottom: MediaQuery.of(context).padding.bottom),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppTheme.isLightTheme ? ConstanceData.da : ConstanceData.da_d,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Spacer(),
              Image.asset(
                AppTheme.isLightTheme
                    ? ConstanceData.fe_no
                    : ConstanceData.fe_no_d,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                ConstanceData.sch_av,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(left: 5, right: 5, top: 16),
              children: [
                InkWell(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (_) => (),
                  //     ),
                  //   );
                  // },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.isLightTheme
                              ? Color.fromARGB(66, 181, 178, 178)
                              : Colors.transparent,
                          offset: const Offset(
                            1,
                            1,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ConstanceData.da_unc,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Until next class",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 12,
                                          color:
                                              Theme.of(context).disabledColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "24 : 12 : 12",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            ConstanceData.da_unc2,
                            height: 80,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Dashboard(),
                                ),
                              );
                            },
                            child: Container(
                              height: 250,
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppTheme.isLightTheme
                                        ? Color.fromARGB(66, 181, 178, 178)
                                        : Colors.transparent,
                                    offset: const Offset(1, 1),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppTheme.isLightTheme
                                            ? ConstanceData.da_jc
                                            : ConstanceData.da_jc_d,
                                        height: 30,
                                      ),
                                      Spacer(),
                                      Text(
                                        "Month",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 12,
                                              color: Theme.of(context)
                                                  .disabledColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      // Image.asset(
                                      //   ConstanceData.h14,
                                      //   height: 30,
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Image.asset(ConstanceData.da_jc_g),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Join in class",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 12,
                                              color: Theme.of(context)
                                                  .disabledColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "65 Hours",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Dashboard(),
                                ),
                              );
                            },
                            child: Container(
                              height: 110,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppTheme.isLightTheme
                                        ? Color.fromARGB(66, 181, 178, 178)
                                        : Colors.transparent,
                                    offset: const Offset(1, 1),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Solved Questions",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 12,
                                                color: Theme.of(context)
                                                    .disabledColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "85",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      AppTheme.isLightTheme
                                          ? ConstanceData.da_sq
                                          : ConstanceData.da_sq,
                                      height: 60,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Dashboard(),
                                ),
                              );
                            },
                            child: Container(
                              height: 165,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppTheme.isLightTheme
                                        ? Color.fromARGB(66, 181, 178, 178)
                                        : Colors.transparent,
                                    offset: const Offset(1, 1),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      AppTheme.isLightTheme
                                          ? ConstanceData.da_pr
                                          : ConstanceData.da_pr_d,
                                      height: 40,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Practice",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 14,
                                            color:
                                                Theme.of(context).disabledColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      height: 32,
                                      width: 73,
                                      child: FloatingActionButton(
                                        elevation: 0,
                                        onPressed: null,
                                        child: Image.asset(
                                          ConstanceData.da_no,
                                          height: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 195,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: AppTheme.isLightTheme
                                      ? Color.fromARGB(66, 181, 178, 178)
                                      : Colors.transparent,
                                  offset: const Offset(1, 1),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppTheme.isLightTheme
                                        ? ConstanceData.da_qu
                                        : ConstanceData.da_qu,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Quiz",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 14,
                                          color:
                                              Theme.of(context).disabledColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "01",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 32,
                                    width: 73,
                                    child: FloatingActionButton(
                                      elevation: 0,
                                      onPressed: null,
                                      child: Image.asset(
                                        ConstanceData.da_vi,
                                        height: 30,
                                      ),
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
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.isLightTheme
                              ? Color.fromARGB(66, 181, 178, 178)
                              : Colors.transparent,
                          offset: const Offset(
                            1,
                            1,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ConstanceData.da_co,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Coins",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 12,
                                          color:
                                              Theme.of(context).disabledColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "1000",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 32,
                            width: 73,
                            child: FloatingActionButton(
                              elevation: 0,
                              onPressed: null,
                              child: Image.asset(
                                ConstanceData.da_bu,
                                height: 30,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
