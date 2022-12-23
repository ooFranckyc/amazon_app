import 'package:amazon_app/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

// ignore: must_be_immutable
class PopularAmzCard extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  bool isLiked;
  PopularAmzCard(
      {super.key,
      required this.title,
      required this.price,
      required this.isLiked,
      required this.image});

  @override
  State<PopularAmzCard> createState() => _PopularAmzCardState();
}

class _PopularAmzCardState extends State<PopularAmzCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185.0,
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          color: AppColor.colorBlack,
          image: DecorationImage(
            //colorFilter: const ColorFilter.srgbToLinearGamma(),
              fit: BoxFit.fitHeight, image: AssetImage(widget.image)),
          borderRadius: BorderRadius.circular(12.0)),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () {
                  setState(() {
                    widget.isLiked = !widget.isLiked;
                  });
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: widget.isLiked
                          ? Colors.transparent
                          : Colors.grey.shade50,
                      shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/icons/heart.png',
                    width: 23.0,
                    height: 23.0,
                    color: widget.isLiked
                        ? AppColor.colorWhite
                        : AppColor.colorBlack,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price
                Text(
                  '€ ${widget.price}',
                  style: TextStyle(
                      color: AppColor.stronglyPrice,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      color: AppColor.colorWhite,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}











// ignore: must_be_immutable
class ComingSoonAmzCard extends StatefulWidget {
  final String title;
  final String shortDesc;
  final String image;
  const ComingSoonAmzCard(
      {super.key,
      required this.title,
      required this.shortDesc, required this.image,});

  @override
  State<ComingSoonAmzCard> createState() => _ComingSoonAmzCardState();
}

class _ComingSoonAmzCardState extends State<ComingSoonAmzCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185.0,
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          color: AppColor.colorBlack,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.image)),
          borderRadius: BorderRadius.circular(12.0)),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () {
                  // add coming soon items
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.backgroundActiveNewItem,
                      shape: BoxShape.circle),
                  child: Icon(CupertinoIcons.cart_fill_badge_plus, size: 30, color: AppColor.colorWhite,)
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: AppColor.colorWhite,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600),
                ),
                // Price
                Text(
                  widget.shortDesc,
                  style: TextStyle(
                      color: AppColor.colorWhite,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
