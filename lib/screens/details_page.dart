import 'package:amazon_app/common/colors.dart';
import 'package:amazon_app/common/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class DetailPageInformation extends StatefulWidget {
  final String imageBg;
  final String itemName;
  final String itemPrice;
  const DetailPageInformation(
      {super.key, required this.imageBg, required this.itemName, required this.itemPrice});

  @override
  State<DetailPageInformation> createState() => _DetailPageInformationState();
}

class _DetailPageInformationState extends State<DetailPageInformation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      body: Stack(
        children: [
          // Bottom Add and Buy Now Items
          Container(
            color: AppColor.colorBlack,
            alignment: Alignment.bottomCenter,
            padding:
                const EdgeInsets.only(bottom: 17.0, left: 22.0, right: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/icons/shopping-cart.png',
                      width: 30,
                      height: 30,
                      color: AppColor.colorGrey,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: AppColor.colorWhite,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60.0,
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColor.stronglyPrice,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          color: AppColor.colorWhite,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Body
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            margin: const EdgeInsets.only(bottom: 115.0),
            padding: const EdgeInsets.only(top: 270, left: 20.0),
            decoration: BoxDecoration(
                color: AppColor.colorWhite,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.elliptical(30, 30),
                    bottomRight: Radius.elliptical(30, 30))),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemName,
                      style: TextStyle(
                          fontSize: 23.0,
                          color: AppColor.colorBlack,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5.0),
                    // Item looking rating
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: RatingStars(
                              rating: 4, iconSize: 27.0, editable: false),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          decoration: BoxDecoration(
                              color: AppColor.bgMenuDrawer,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(
                            '3,4 Stars',
                            style: TextStyle(
                                color: AppColor.extraTSPBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '€ ${widget.itemPrice}',
                            style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w700,
                                color: AppColor.stronglyPrice),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 8.0, left: 5),
                            child: Text(
                              '18,260',
                              style: TextStyle(
                                  color: AppColor.extraTSPBlack,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                                color: AppColor.degradeGreen,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              '3,4 Stars',
                              style: TextStyle(
                                  color: AppColor.degradeGreenBold,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(13.0),
                        margin: const EdgeInsets.only(right: 20.0, top: 15.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColor.bgItemGrey,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Storage',
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: AppColor.colorBlack,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Bounce(
                                  duration: const Duration(milliseconds: 180),
                                  onPressed: () {
                                    setState(() {
                                      currentIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 10.0),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: currentIndex == 0 ? 0 : 1.5,
                                            color: currentIndex == 0
                                                ? AppColor.colorBlack
                                                : AppColor.colorGrey),
                                        color: currentIndex == 0
                                            ? AppColor.colorBlack
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Text(
                                      '32gb',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: currentIndex == 0
                                              ? AppColor.colorWhite
                                              : AppColor.colorGrey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Bounce(
                                  duration: const Duration(milliseconds: 180),
                                  onPressed: () {
                                    setState(() {
                                      currentIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 10.0),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: currentIndex == 1 ? 0 : 1.5,
                                            color: currentIndex == 1
                                                ? AppColor.colorBlack
                                                : AppColor.colorGrey),
                                        color: currentIndex == 1
                                            ? AppColor.colorBlack
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Text(
                                      '64gb',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: currentIndex == 1
                                              ? AppColor.colorWhite
                                              : AppColor.colorGrey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'Delivery Options',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: AppColor.colorBlack,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15.0),
                        margin: const EdgeInsets.only(right: 20.0, top: 10.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColor.bgItemGrey,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  size: 40,
                                  color: AppColor.colorGrey,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Deliver to Cameroon',
                                      style: TextStyle(
                                          color: AppColor.colorBlack
                                              .withOpacity(.80),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Yaounde, Nkolb, 0000',
                                      style: TextStyle(
                                          color: AppColor.colorBlack
                                              .withOpacity(.80),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Bounce(
                              duration: const Duration(milliseconds: 180),
                              onPressed: () {
                                // change user location
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColor.colorBlack,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: AppColor.colorWhite,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'Product description',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: AppColor.colorBlack,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        AppStrings.defaultProductDesc,
                        maxLines: 7,
                        overflow: TextOverflow.fade,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // Amazon Appbar
          setDetailsResultAppBar(),
        ],
      ),
    );
  }

  Widget setDetailsResultAppBar() {
    return Container(
      height: 290.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.colorBlack,
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              //colorFilter: const ColorFilter.srgbToLinearGamma(),
              image: AssetImage(widget.imageBg)),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(35.0),
              bottomRight: Radius.circular(35.0))),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: AppColor.colorBlack.withOpacity(.80),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.arrow_back,
                        size: 25, color: AppColor.colorWhite)),
              ),
              // profile
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: AppColor.colorBlack.withOpacity(.80),
                    borderRadius: BorderRadius.circular(5)),
                child: Image.asset('assets/icons/shopping-cart.png',
                    color: AppColor.colorWhite, width: 25, height: 25.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
