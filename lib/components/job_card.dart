import 'package:flutter/material.dart';
import 'package:jobs_app/components/company_info.dart';
import 'package:jobs_app/components/custom_button.dart';
import 'package:jobs_app/components/custom_vertical_text.dart';

import 'package:jobs_app/core/styles.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.circular(12),
    
      child: Container(
         decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1), 
            borderRadius: BorderRadius.circular(12),
          ),
        child: Column(
          children: [
             const  Padding(
                 padding:  EdgeInsets.only( top:8,left: 8,right: 8),
                 child: CompanyInfo(),
               ),
                  Divider(
                  
                    color: Colors.grey.shade300, thickness: 1),
         Padding(
                 padding: const EdgeInsets.only( top:8,left: 8,right: 8),
           child: Row(
                  children: [
                    const CustomButton(),
                    const Spacer(),
                    CustomVerticalText(
                      headText: 'الرياض , السعودية',
                      headTextStyle: AppStyles.madaniRegular12.copyWith(color: Colors.black54),
                      text: '1500\$ :2000\$',
                      textStyle: AppStyles.madaniSemibold12,
                    ),
                  ],
                ),
         ),
                ],
            ),
      ),
    );
    
  }
}

