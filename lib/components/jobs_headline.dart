import 'package:flutter/material.dart';
import 'package:jobs_app/core/constants.dart';
import 'package:jobs_app/core/styles.dart';

class JobsHeadline extends StatelessWidget {
  const JobsHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text('الكل',style: AppStyles.madaniRegular16.copyWith(color: kPrimaryColor),),
         const Spacer(),
         const Text('الوظائف التي تناسبك',style: AppStyles.madaniSemibold16,),
        ],
      ),
    );
  }
}

