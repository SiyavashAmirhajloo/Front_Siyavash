import 'package:flutter/material.dart';

class Profile_Post extends StatefulWidget {
  Profile_Post({Key? key}) : super(key: key);

  @override
  State<Profile_Post> createState() => _ProfilePostScreenState();
}

class _ProfilePostScreenState extends State<Profile_Post> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_Post(),
    );
  }
}
