import 'package:flutter/material.dart';
import 'package:jobs_app/core/app_assets.dart';
import 'package:jobs_app/core/constants.dart';
import 'package:jobs_app/core/styles.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Stack(children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(15.0), 
          child: Image.asset(Assets.imagesCover,  height: 150,
          width: double.infinity,
          fit: BoxFit.cover,)),
           Positioned(
              bottom: 0,
              right: 0,
              left: 0,
             child: Container(

                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                       gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.7),  
                Colors.transparent,             
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
                       ),
                     ),
                   ),
           ),
        Positioned(
          bottom: 20,
          right: 10,
          left: 10,
          child: Text('افضل تطبيق لايجاد الوظيفة المناسبة',style: AppStyles.madaniSemibold14.copyWith(color: white),  textAlign: TextAlign.center,)),
       ]),
    );
  }
}