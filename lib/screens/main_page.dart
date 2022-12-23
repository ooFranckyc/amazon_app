import 'package:amazon_app/common/assets_provider.dart';
import 'package:amazon_app/common/card_best_coll_amazon.dart';
import 'package:amazon_app/common/colors.dart';
import 'package:amazon_app/common/new_item_widget.dart';
import 'package:amazon_app/common/popular_amazon_card.dart';
import 'package:amazon_app/common/strings.dart';
import 'package:amazon_app/screens/details_page.dart';
import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List data = [
    ["Iphone 13 (12gb)", "67,999", false, 'assets/images/iphone.jpg'],
    ["Apple Watch", "40,000", false, 'assets/images/apple-wacth.jpg'],
    ["Apple TV 4K", "45,000", false, 'assets/images/apple-tv.jpg'],
    ["Samsung S22 Ultra", "63,999", false, 'assets/images/samsung-galaxy.jpg'],
  ];
    List data2 = [
    ["Samsung TV 4K", "Samsung Inov TV new slim device", "assets/images/samsung-tv.jpg"],
    ["Lenovo i9 Nova", "A new generation pc for hard work", "assets/images/lenovo.jpg"],
    ["Surface 13 12th", "You new vision as...", "assets/images/surface-pro.png"],
    ["Super Alexa", "Alexa Elec for you home, all in one", "assets/images/alexa.jpg"],
  ];
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorBlack,
      body: Stack(
        children: [
          // Amazon Bottom Navigation Bar
          Container(
            color: AppColor.colorBlack,
            alignment: Alignment.bottomCenter,
            padding:
                const EdgeInsets.only(bottom: 15.0, left: 22.0, right: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Amazon Home Action
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetProvider.iconHome,
                        width: 25,
                        height: 25,
                        color: currentIndex == 0
                            ? AppColor.colorWhite
                            : AppColor.noActiveIconNavigate,
                      ),
                      const SizedBox(width: 10),
                      currentIndex == 0
                          ? Text(
                              AppStrings.home,
                              style: TextStyle(
                                  color: AppColor.colorWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
                // Amazon Favorite Action
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetProvider.iconHeart,
                        width: 25,
                        height: 25,
                        color: currentIndex == 1
                            ? AppColor.colorWhite
                            : AppColor.noActiveIconNavigate,
                      ),
                      const SizedBox(width: 10),
                      currentIndex == 1
                          ? Text(
                              AppStrings.magics,
                              style: TextStyle(
                                  color: AppColor.colorWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
                // Amazon View Notifications
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetProvider.iconBell,
                        width: 25,
                        height: 25,
                        color: currentIndex == 2
                            ? AppColor.colorWhite
                            : AppColor.noActiveIconNavigate,
                      ),
                      const SizedBox(width: 10),
                      currentIndex == 2
                          ? Text(
                              AppStrings.notifications,
                              style: TextStyle(
                                  color: AppColor.colorWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
                // Amazon Buy with Card
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetProvider.iconShopCard,
                        width: 25,
                        height: 25,
                        color: currentIndex == 3
                            ? AppColor.colorWhite
                            : AppColor.noActiveIconNavigate,
                      ),
                      const SizedBox(width: 10),
                      currentIndex == 3
                          ? Text(
                              AppStrings.buys,
                              style: TextStyle(
                                  color: AppColor.colorWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Amazon Body
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            margin: const EdgeInsets.only(bottom: 65.0),
            padding: const EdgeInsets.only(top: 325, left: 15.0),
            decoration: BoxDecoration(
                color: AppColor.colorWhite,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.elliptical(30, 30),
                    bottomRight: Radius.elliptical(30, 30))),
            child: SizedBox(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.popularProduct,
                          style: TextStyle(
                              fontSize: 19.0,
                              color: AppColor.colorBlack,
                              fontWeight: FontWeight.w700),
                        ),
                        GestureDetector(
                          onTap: () {
                            // What's Happen?
                          },
                          child: Text(
                            AppStrings.viewAll,
                            style: TextStyle(
                                fontSize: 14.0,
                                color: AppColor.colorGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    height: 250.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final produt = data[index];
                        return OpenContainer(
                          closedBuilder:
                              (BuildContext context, void Function() action) {
                            return PopularAmzCard(
                                title: produt[0],
                                price: produt[1],
                                isLiked: produt[2],
                                image: produt[3]);
                          },
                          openBuilder: (BuildContext context,
                                  void Function({Object? returnValue})
                                      action) =>
                              DetailPageInformation(
                            imageBg: produt[3],
                            itemName: produt[0],
                            itemPrice: produt[1],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        color: Colors.black,
                        child: CarouselSlider(
                            items: const [
                             NewItemDesignWidget(itemName: 'MackBook Pro', itemPrice: '1,92,998', itemImage: 'assets/images/mac_intch.jpg', tagUIColorPriority: 'w',),
                             NewItemDesignWidget(itemName: 'Lenovo i9 Thinkpart', itemPrice: '1561,991', itemImage: 'assets/images/lenovo.jpg', tagUIColorPriority: 'b'),
                             NewItemDesignWidget(itemName: 'Alexa Super Home ', itemPrice: '2000,000', itemImage: 'assets/images/alexa.jpg', tagUIColorPriority: 'w'),
                             NewItemDesignWidget(itemName: 'Surface pro 11 ', itemPrice: '1,78, 554', itemImage: 'assets/images/surface-pro.png', tagUIColorPriority: 'w'),
                             NewItemDesignWidget(itemName: 'Apple TV 4K ', itemPrice: '222,320', itemImage: 'assets/images/apple-tv2.jpg', tagUIColorPriority: 'b'),
                            ],
                            options: CarouselOptions(
                                autoPlay: true,
                                enableInfiniteScroll: true,
                                viewportFraction: 1.2,
                                pageSnapping: true)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coming soon in Amazon',
                          style: TextStyle(
                              fontSize: 19.0,
                              color: AppColor.colorBlack,
                              fontWeight: FontWeight.w700),
                        ),
                        GestureDetector(
                          onTap: () {
                            // What's Happen?
                          },
                          child: Text(
                            AppStrings.viewAll,
                            style: TextStyle(
                                fontSize: 14.0,
                                color: AppColor.colorGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    height: 250.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final produt = data2[index];
                        return ComingSoonAmzCard(
                            title: produt[0], shortDesc: produt[1], image: produt[2],);
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
          // Amazon Appbar
          amazonAppBar(),
        ],
      ),
    );
  }

  Widget amazonAppBar() {
    return Container(
      height: 330.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(35.0),
              bottomRight: Radius.circular(35.0))),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          // Amazon User Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Bounce(
                duration: const Duration(milliseconds: 180),
                onPressed: () => ZoomDrawer.of(context)!.toggle(),
                child: Image.asset(
                  AssetProvider.iconMenu,
                  width: 40.0,
                  height: 40.0,
                  color: Colors.white,
                ),
              ),
              Image.asset(AssetProvider.logo, height: 50.0),
              // profile
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AssetProvider.defaultProfile)),
                    shape: BoxShape.circle,
                    color: AppColor.colorWhite),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          // Amazon Search Bar
          Container(
            height: 55.0,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
                color: AppColor.colorWhite,
                borderRadius: BorderRadius.circular(12.0)),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    AssetProvider.loupe,
                    width: 23.0,
                    height: 23.0,
                    color: AppColor.colorGrey,
                  ),
                ),
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                    hintText: AppStrings.whatSearch,
                    hintMaxLines: 1,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  cursorColor: AppColor.stronglyPrice,
                )),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      AssetProvider.iconCamera,
                      width: 23.0,
                      height: 23.0,
                      color: AppColor.colorGrey,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Image.asset(
                      AssetProvider.iconMicrophone,
                      width: 23.0,
                      height: 23.0,
                      color: AppColor.colorGrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          // Amazon Best Collections Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  AppStrings.bestCollection,
                  style: TextStyle(
                      fontSize: 22.0,
                      color: AppColor.colorWhite,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 80.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    CardBestAmazonCollection(
                        icon: AssetProvider.iconPhone,
                        name: AppStrings.amzMobile),
                    CardBestAmazonCollection(
                        icon: AssetProvider.iconFashion,
                        name: AppStrings.amzFashion),
                    CardBestAmazonCollection(
                        icon: AssetProvider.iconSofa,
                        name: AppStrings.amzHomes),
                    CardBestAmazonCollection(
                        icon: AssetProvider.iconPlug,
                        name: AppStrings.amzElectronics),
                    CardBestAmazonCollection(
                        icon: AssetProvider.iconToys, name: AppStrings.amzToys),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
