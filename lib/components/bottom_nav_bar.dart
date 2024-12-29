import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobs_app/core/app_assets.dart';
import 'package:jobs_app/core/constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
   int selectedIndex = 2; 

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
      
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), 
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, -3), 
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius:const BorderRadius.vertical(
          top: Radius.circular(20.0), 
        ),
      
        child: BottomNavigationBar(
         
            currentIndex: selectedIndex,
          onTap: onItemTapped,
          
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: kPrimaryColor, 
          unselectedItemColor: darkerGray,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
                       BottomNavigationBarItem(icon: SvgPicture.asset(Assets.iconsArrangeCircle2), label: 'خدمات'),
        
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.iconsTaskSquare), label: 'وظائفي'),
                                    BottomNavigationBarItem(icon: SvgPicture.asset(Assets.iconsObject), label: 'تصفح'),
        
                           BottomNavigationBarItem(icon: SvgPicture.asset(Assets.iconsMessages3), label: 'المحادثات'),
        
                  BottomNavigationBarItem(icon: SvgPicture.asset(Assets.iconsProfile), label: 'حسابي'),
        
        
        ]),
      ),
    );
  }
}