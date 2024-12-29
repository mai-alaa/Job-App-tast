import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobs_app/components/custom_vertical_text.dart';
import 'package:jobs_app/core/app_assets.dart';
import 'package:jobs_app/core/constants.dart';
import 'package:jobs_app/core/extentions.dart';
import 'package:jobs_app/core/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
   double screenHeight = MediaQuery.sizeOf(context).height;
    return ClipRRect(
       borderRadius:const BorderRadius.vertical(
        bottom: Radius.circular(20.0), 
      ), 
      child: Container(
        color: kPrimaryColor,
        height: screenHeight * 0.16,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 40),
          child: Row(
            children: [
              SvgPicture.asset(Assets.iconsNotification),
              8.toWidth,
              SvgPicture.asset(Assets.iconsHeartSolid),
            const  Spacer(),
             Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           CustomVerticalText(headText: 'اسامه دياب', headTextStyle: AppStyles.madaniSemibold14.copyWith(color: Colors.white),text: 'المسمي الوظيفي',textStyle: AppStyles.madaniRegular12.copyWith(color: Colors.white,)),
          10.toWidth,
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(Assets.imagesProfile),
            ),
          ),
        ],
                  ),
            ],
          ),
        ),
      ),
      
    );
  }
}

