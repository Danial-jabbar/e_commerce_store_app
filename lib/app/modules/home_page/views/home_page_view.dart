// import 'package:e_commerce_store_app/app/modules/home_page/views/shared/grid_view%20column.dart';
import 'package:e_commerce_store_app/app/modules/home_page/views/shared/ContainerCard.dart';
import 'package:e_commerce_store_app/app/modules/home_page/views/shared/wedget/tab_widget.dart';
import 'package:e_commerce_store_app/app/routes/app_pages.dart';
import 'package:e_commerce_store_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.secondary));
    return Scaffold(

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.person,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondary,
        iconTheme: IconThemeData(color: AppColors.primary),
        actions: [
          Container(
            height: 48,
            width: 268,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.primary,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: 'Search Product',
                  hintStyle: TextStyle(color: AppColors.primaryLabelColor),
                ),
              ),
            ),
            // color: Colors.grey,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0.0),
        child: Column(
          children:  [
           const SizedBox(
              height: 20,
            ),
            Text(
              "Find your suitable product now.",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabWidget(
                    onTap: () {
                      controller.isSelected.value = 1;
                      print("${controller.isSelected.value}");
                    },
                    name: "Hand Bags",
                    widthOfLine: 75.0,
                    lineColor: controller.isSelected.value == 1
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 1
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                  TabWidget(
                    onTap: () => controller.isSelected.value = 2,
                    name: "Watch",
                    widthOfLine: 43.0,
                    lineColor: controller.isSelected.value == 2
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 2
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                  TabWidget(
                    onTap: () => controller.isSelected.value = 3,
                    name: "Books",
                    widthOfLine: 45.0,
                    lineColor: controller.isSelected.value == 3
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 3
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                  TabWidget(
                    onTap: () => controller.isSelected.value = 4,
                    name: "Glasses",
                    widthOfLine: 55.0,
                    lineColor: controller.isSelected.value == 4
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 4
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                ],
              );
            }),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 450,
                  width: 430,
                  // color: Colors.red,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.0 / 1.4,
                    primary: false,

                    children: <Widget>[
                     ContainerCard(
                       onTap: ()=> Get.toNamed(Routes.DETAIL_PAGE),
                       name: 'Mulkbb',
                       image: 'assets/images/golden_bag.png',
                       price: 770,
                       subTitle: 'series 7',
                     ),
                      ContainerCard(
                        onTap: ()=> Get.toNamed(Routes.DETAIL_PAGE),

                      ),
                      ContainerCard(
                        onTap: ()=> Get.toNamed(Routes.DETAIL_PAGE),
                        name: 'Danial',
                        image: 'assets/images/golden_bag.png',
                        price: 770,
                        subTitle: 'series 7',
                      ),
                      ContainerCard(
                        onTap: ()=> Get.toNamed(Routes.DETAIL_PAGE),
                        name: 'Danial',
                        image: 'assets/images/golden_bag.png',
                        price: 770,
                        subTitle: 'series 7',
                      ),



                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


