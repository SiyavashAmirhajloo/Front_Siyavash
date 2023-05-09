import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class GroupItemWidget extends StatelessWidget {
  final String name;
  final String photo;
  final int membersCount;
  GroupItemWidget(
      {required this.photo, required this.name, required this.membersCount});

  Size size = WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;

  double getHorizontalSize(double px) {
    return ((px * size.width) / 390);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
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
          CircleAvatar(
            backgroundImage: AssetImage(photo),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 2,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  // "IELTS 8",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF141416),
                    fontSize: 15,
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      membersCount.toString() + " member",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF777e90),
                        fontSize: 11,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
