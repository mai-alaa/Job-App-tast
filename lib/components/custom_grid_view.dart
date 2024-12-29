import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
   final int itemCount;
  
  final double childAspectRatio;
  final IndexedWidgetBuilder itemBuilder;
  const CustomGridView({super.key, required this.itemCount,  required this.childAspectRatio, required this.itemBuilder});

  @override
  Widget build(BuildContext context) {

    return Padding(
   padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
          shrinkWrap: true,
                    padding: EdgeInsets.zero, 

          physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount ,
        gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
            childAspectRatio: childAspectRatio,
          
          ), itemBuilder:itemBuilder),
    );
  }
}