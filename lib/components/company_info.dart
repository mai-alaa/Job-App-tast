import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobs_app/components/custom_rating.dart';
import 'package:jobs_app/core/app_assets.dart';
import 'package:jobs_app/core/constants.dart';
import 'package:jobs_app/core/extentions.dart';
import 'package:jobs_app/core/styles.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
                  
       Padding(
         padding: const EdgeInsets.only(left: 8),
         child: SvgPicture.asset(Assets.iconsHeart),
       ),
      const Spacer(),
       Row(
         children: [
          
           Column(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               
             const   Text(
                 'اسم الشركة',
                 style: AppStyles.madaniSemibold14,
               ),
             Row(
               children: [
                Text('4.8',style: AppStyles.madaniRegular14.copyWith(color: black),),
               const  CustomRating(rating: 4.5,
                 itemSize: 16,
                 ),
               ],
             )
             ],
           ),
           8.toWidth,
            Image.asset(Assets.imagesCompany),
          
         ],
       ),
     ],
                    );
  }
}