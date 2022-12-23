import 'package:amazon_app/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class NewItemDesignWidget extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String itemImage;
  final String tagUIColorPriority;
  const NewItemDesignWidget(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.itemImage, required this.tagUIColorPriority});

  @override
  State<NewItemDesignWidget> createState() => _NewItemDesignWidgetState();
}

class _NewItemDesignWidgetState extends State<NewItemDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 215.0,
      margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: AppColor.colorBlack,
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(widget.itemImage)),
      ),
      padding: const EdgeInsets.only(left: 50, top: 25, bottom: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: widget.tagUIColorPriority == 'w' ? AppColor.colorWhite.withOpacity(.40) : AppColor.colorBlack.withOpacity(.40),
                ),
                child: Text(
                  'News',
                  style: TextStyle(
                      color: widget.tagUIColorPriority == 'w' ? AppColor.colorWhite : AppColor.colorBlack,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20.0),
              // Product name
              Text(
                widget.itemName,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: widget.tagUIColorPriority == 'w' ? AppColor.colorWhite : AppColor.colorBlack),
              ),
              Text(
                widget.itemPrice,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.stronglyPrice),
              ),
              const SizedBox(height: 15.0),
              Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () {
                  // Dynmaic paiement
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
                  decoration: BoxDecoration(
                      color: AppColor.backgroundActiveNewItem,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColor.colorWhite,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          // Product Photo
          // Padding(
          //   padding: const EdgeInsets.only(right: 25.0),
          //   child: Image.asset(
          //     'assets/images/apple-wacth.jpg',
          //     width: 190.0,
          //     height: 190.0,
          //   ),
          // )
        ],
      ),
    );
  }
}
