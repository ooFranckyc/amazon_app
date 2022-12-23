import 'package:amazon_app/common/assets_provider.dart';
import 'package:amazon_app/common/colors.dart';
import 'package:amazon_app/common/item_navigate_drawer.dart';
import 'package:amazon_app/common/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgDrawedNavigation,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                  //border: Border.all(width: 2, color: AppColor.colorBlack),
                  color: AppColor.colorGrey,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetProvider.defaultProfile)),
                  shape: BoxShape.circle),
            ),
            const SizedBox(height: 5.0),
            Text(
              AppStrings.hello,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppColor.colorBlack,
                  fontSize: 26.0),
            ),
            const SizedBox(height: 3.0),
            Text(
              AppStrings.defaultName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColor.colorBlack,
                  fontSize: 23.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Divider(
              color: AppColor.colorGrey,
              height: 1,
            ),
            // list navigate items
            const SizedBox(height: 25.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemNavigateDrawer(itemName: AppStrings.i1),
                ItemNavigateDrawer(itemName: AppStrings.i2),
                ItemNavigateDrawer(itemName: AppStrings.i3),
                ItemNavigateDrawer(itemName: AppStrings.i4),
                ItemNavigateDrawer(itemName: AppStrings.i5),
                ItemNavigateDrawer(itemName: AppStrings.i6),
                ItemNavigateDrawer(itemName: AppStrings.i7),
                ItemNavigateDrawer(itemName: AppStrings.i8),
                ItemNavigateDrawer(itemName: AppStrings.i9),
                ItemNavigateDrawer(itemName: AppStrings.i10),
                ItemNavigateDrawer(itemName: AppStrings.i11),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () => ZoomDrawer.of(context)!.toggle(),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.bgMenuDrawer,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    AppStrings.logOut,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: AppColor.colorBlack),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
