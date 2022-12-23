import 'package:amazon_app/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class ItemNavigateDrawer extends StatefulWidget {
  final String itemName;
  const ItemNavigateDrawer({super.key, required this.itemName});

  @override
  State<ItemNavigateDrawer> createState() => _ItemNavigateDrawerState();
}

class _ItemNavigateDrawerState extends State<ItemNavigateDrawer> {
  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 180),
      onPressed: () {
        //code
      },
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            widget.itemName,
            style: TextStyle(
                fontSize: 18.0,
                color: AppColor.colorBlack,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
