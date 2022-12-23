import 'package:amazon_app/common/colors.dart';
import 'package:flutter/material.dart';

class CardBestAmazonCollection extends StatelessWidget {
  final String icon;
  final String name;
  const CardBestAmazonCollection(
      {super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.extraTSPBlack,
                borderRadius: BorderRadius.circular(8.0)),
            child: Image.asset(
              icon,
              width: 30.0,
              height: 30.0,
              color: AppColor.colorWhite,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            name,
            style: TextStyle(color: AppColor.colorWhite),
          )
        ],
      ),
    );
  }
}
