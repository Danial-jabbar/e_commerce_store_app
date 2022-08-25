// import 'package:e_commerce_store_app/app/modules/home_page/views/shared/grid_view%20column.dart';
import 'package:e_commerce_store_app/app/modules/home_page/views/shared/wedget/tab_widget.dart';
import 'package:e_commerce_store_app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColors.primary),
        actions: [
          Container(
            height: 48,
            width: 268,
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
            // color: Colors.grey,
          ),
        ],
      ),
      body: Column(
        children:  [
         const SizedBox(
            height: 20,
          ),
          Text(
            "Find your suitable product now.",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
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
          const SizedBox(height: 28),
          GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            // TODO: Build a grid of cards (102)
            children: <Widget>[
              Card(

            )
            ],
          ),
        ],
      ),
    );
  }
}
