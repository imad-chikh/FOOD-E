import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_e/modules/home_page/widgets/deliver_to_app_bar.dart';
import 'package:food_e/modules/home_page/widgets/nearest_resturants.dart';
import 'package:food_e/modules/home_page/widgets/popular_items.dart';
import 'package:food_e/modules/home_page/widgets/special_offers.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 100.h,
        leading: const DeliverTo(),
        actions: [
          IconButton(
              onPressed: () {
                // Get.toNamed("/sign-in-page");
              },
              icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {
                // Get.toNamed("/sign-in-page");
              },
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: const SizedBox(
        height: double.infinity,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            //Special Offers
            SliverToBoxAdapter(child: SpecialOffers()),
            //nearest resturants
            SliverToBoxAdapter(child: NearestResturant()),
            //popular items
            SliverToBoxAdapter(child: PopularItems())
          ],
        ),
      ),
    );
  }
}
