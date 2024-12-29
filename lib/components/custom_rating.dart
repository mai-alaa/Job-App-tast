import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRating extends StatelessWidget {
  final double rating;
  final bool allowHalfRating;
  final double itemSize;
  final void Function(double)? onRatingUpdate;

  const CustomRating({
    Key? key,
    required this.rating,
    this.allowHalfRating = true,
    this.itemSize = 20,
    this.onRatingUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 0,
      allowHalfRating: allowHalfRating,
      itemSize: itemSize,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: onRatingUpdate ?? (rating) {},
    );
  }
}
