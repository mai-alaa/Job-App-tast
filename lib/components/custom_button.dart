import 'package:flutter/material.dart';
import 'package:jobs_app/core/constants.dart';
import 'package:jobs_app/core/styles.dart';

class CustomButton extends StatelessWidget {
 const  CustomButton({super.key});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
              style: ElevatedButton.styleFrom(
                backgroundColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: const BorderSide(color: kPrimaryColor),
             
              ),
              onPressed: () {
              },
              child:  Text(
                'التفاصيل',
                style: AppStyles.madaniRegular16.copyWith(color: kPrimaryColor),
              ),
            );
  }
}