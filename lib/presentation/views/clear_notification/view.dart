import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';

class ClearNotification extends StatefulWidget {
   ClearNotification({super.key, required this.controller});
  PageController? controller;

  @override
  State<ClearNotification> createState() => _ClearNotificationState();
}

class _ClearNotificationState extends State<ClearNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(
          onPressed: () {
            widget.controller!.animateToPage(0,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeIn);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("Clear",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor.withOpacity(.4))),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("There is no ",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor.withOpacity(.4))),
            Text(
              "Notification ",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greenColor.withOpacity(.4)),
            ),
          ],
        ),
      ),
    );
  }
}
