// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use, prefer_const_constructors, sort_child_properties_last

import 'package:get/get.dart';
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Register/Choose_Language.dart';
import 'package:lango/Widget/textFiealds.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lango/Widget/textFiealds.dart';

class RController extends GetxController with StateMixin {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

RxString Gender = "Gender".obs;

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: MediaQuery.of(context).padding.top + 50,
            bottom: MediaQuery.of(context).padding.bottom + 27),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Row(
            //children: [
            Image.asset(
              ConstanceData.p1,
              height: 21,
            ),
            SizedBox(
              height: 27,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text(
                    "Registration",
                    style: TextStyle(
                        color: Color(0xFF0F0F11),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProductSans'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please fill your infomation to register",
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 12,
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 440,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.isLightTheme
                          ? Color(0xFFFCFCFD)
                          : Color.fromARGB(255, 61, 61, 61),
                      border: Border.all(
                          color: AppTheme.isLightTheme
                              ? HexColor("#E6E8EC")
                              : Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 81,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  icon: AppTheme.isLightTheme
                                      ? Image.asset(
                                          ConstanceData.p8,
                                          height: 21,
                                        )
                                      : Image.asset(
                                          ConstanceData.dp8,
                                          height: 21,
                                        ),
                                  onPressed: () {},
                                ),
                                labelText: 'First name',
                                labelStyle: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 14,
                                  color: Color(0xFF777E90),
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // TextFormField(
                        //   style: TextStyle(
                        //       fontFamily: 'ProductSans',
                        //       fontSize: 10,
                        //       fontWeight: FontWeight.bold,
                        //       color: Color(0xFF141416)),
                        // ),
                        Divider(),
                        Container(
                          height: 69,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 15, top: 10, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    icon: AppTheme.isLightTheme
                                        ? Image.asset(
                                            ConstanceData.p8,
                                            height: 21,
                                          )
                                        : Image.asset(
                                            ConstanceData.dp8,
                                            height: 21,
                                          ),
                                    onPressed: () {},
                                  ),
                                  //click: () {},
                                  labelText: 'Last name',
                                  labelStyle: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 14,
                                    color: Color(0xFF777E90),
                                    // fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 69,
                          child: Obx(
                            () => Padding(
                              padding: const EdgeInsets.all(15),
                              child: MyTextFieald(
                                suffixIcon: IconButton(
                                  icon: AppTheme.isLightTheme
                                      ? Image.asset(
                                          ConstanceData.p9,
                                          height: 21,
                                        )
                                      : Image.asset(
                                          ConstanceData.dp9,
                                          height: 21,
                                        ),
                                  onPressed: () {},
                                ),
                                click: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ListWidget();
                                    },
                                  );
                                },
                                lableText: Gender.value,
                                lableStyle: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 14,
                                  color: Color(0xFF777E90),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 69,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 15,
                              top: 10,
                              left: 15,
                              right: 15,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  icon: AppTheme.isLightTheme
                                      ? Image.asset(
                                          ConstanceData.u1,
                                          height: 21,
                                        )
                                      : Image.asset(
                                          ConstanceData.dp8,
                                          height: 21,
                                        ),
                                  onPressed: () {},
                                ),
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 14,
                                  color: Color(0xFF777E90),
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 69,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 15, top: 10, right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    icon: AppTheme.isLightTheme
                                        ? Image.asset(
                                            ConstanceData.p8,
                                            height: 21,
                                          )
                                        : Image.asset(
                                            ConstanceData.dp8,
                                            height: 21,
                                          ),
                                    onPressed: () {},
                                  ),
                                  //click: () {},
                                  labelText: 'Birthday',
                                  labelStyle: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 14,
                                    color: Color(0xFF777E90),
                                    // fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                        // Divider(),
                        // Container(
                        //   height: 69,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(15),
                        //     child: MyTextFieald(
                        //       suffixIcon: IconButton(
                        //         icon: AppTheme.isLightTheme
                        //             ? Image.asset(
                        //                 ConstanceData.p9,
                        //                 height: 21,
                        //               )
                        //             : Image.asset(
                        //                 ConstanceData.dp9,
                        //                 height: 21,
                        //               ),
                        //         onPressed: () {},
                        //       ),
                        //       click: () {
                        //         showModalBottomSheet<void>(
                        //           context: context,
                        //           builder: (BuildContext context) {
                        //             return ListView(
                        //               padding:
                        //                   EdgeInsets.only(top: 130, bottom: 0),
                        //               children: [
                        //                 Container(
                        //                   child: Column(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.center,
                        //                     children: [
                        //                       Container(
                        //                         child: TableCalendar(
                        //                           firstDay: DateTime.utc(
                        //                               2010, 10, 16),
                        //                           lastDay:
                        //                               DateTime.utc(2030, 3, 14),
                        //                           focusedDay: DateTime.now(),
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   decoration: BoxDecoration(
                        //                     color: AppTheme.isLightTheme
                        //                         ? Color(0xFFF4F5F6)
                        //                         : Colors.black,
                        //                     border: Border.all(
                        //                         color: HexColor("#EBEBF0")),
                        //                     borderRadius: BorderRadius.only(
                        //                       topLeft:
                        //                           const Radius.circular(8.0),
                        //                       topRight:
                        //                           const Radius.circular(8.0),
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             );
                        //           },
                        //         );
                        //       },
                        //       lableText: 'Birthday',
                        //       lableStyle: TextStyle(
                        //         fontFamily: 'ProductSans',
                        //         fontSize: 14,
                        //         color: Color(0xFF777E90),
                        //       ),
                        //     ),
                        //     // Text(
                        //     //   'Birthday',
                        //     //   style: TextStyle(
                        //     //       fontFamily: 'ProductSans',
                        //     //       fontSize: 14,
                        //     //       color: Color(0xFF777E90)),
                        //     // ).data!,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (_) => (),
            //       ),
            //     );
            //   },
            //   child: Center(
            //     child: Container(
            //       height: 50,
            //       width: 180,
            //       decoration: BoxDecoration(
            //         color: Color(0xFF3757FF),
            //         borderRadius: BorderRadius.all(Radius.circular(30)),
            //       ),
            //       child: Center(
            //         child: Text(
            //           "Continue",
            //           style: Theme.of(context).textTheme.bodyText1!.copyWith(
            //                 fontFamily: 'ProductSans',
            //                 fontSize: 15,
            //                 //fontWeight: FontWeight.bold,
            //                 color: Colors.white,
            //               ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChooselanguageScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 48,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Color(0xFF3757FF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontFamily: 'ProductSans',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView(
          padding: EdgeInsets.only(top: 130, bottom: 0),
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF141416),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text('Female'),
                        value: 'Female',
                        groupValue: Gender.value,
                        onChanged: (value) {
                          setState(() {
                            Gender.value = value.toString();

                            Navigator.of(context).pop();

                            //print(Gender);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text("Male"),
                        value: "Male",
                        groupValue: Gender.value,
                        onChanged: (value) {
                          setState(() {
                            Gender.value = value.toString();
                            Navigator.of(context).pop();

                            //print(Gender);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text("Other"),
                        value: "Other",
                        groupValue: Gender.value,
                        onChanged: (value) {
                          setState(() {
                            Gender.value = value.toString();
                            Navigator.of(context).pop();

                            //print(Gender);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppTheme.isLightTheme ? Color(0xFFF4F5F6) : Colors.black,
                border: Border.all(color: HexColor("#EBEBF0")),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(8.0),
                  topRight: const Radius.circular(8.0),
                ),
              ),
            ),
          ],
        ));
    ;
  }
}
