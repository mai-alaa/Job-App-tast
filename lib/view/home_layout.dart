
import 'package:flutter/material.dart';

import 'package:jobs_app/components/bottom_nav_bar.dart';
import 'package:jobs_app/components/cover_image.dart';
import 'package:jobs_app/components/custom_app_bar.dart';
import 'package:jobs_app/components/custom_grid_view.dart';
import 'package:jobs_app/components/job_card.dart';
import 'package:jobs_app/components/jobs_headline.dart';
import 'package:jobs_app/core/extentions.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
             child: Column(
          children: [
         const CustomAppBar(),
          const   CoverImage(),
            const JobsHeadline(),
            10.toHeight,
        CustomGridView(itemBuilder: (context,index)=> const JobCard(), itemCount: 4, childAspectRatio: 5/2,)
        
        
          ],
        ),

          )
        ],
       
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
}}

