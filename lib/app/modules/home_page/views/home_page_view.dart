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
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 13.0 / 11.0,
                              child: Image.asset('assets/images/brown_bag.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Mulberry Clutch',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                                  const SizedBox(height: 8.0),
                                  Text('Series 7', style: TextStyle(color: Colors.grey),),
                                  const SizedBox(height: 8.0),
                                  Text('999',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.secondary),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 13.0 / 11.0,
                              child: Image.asset('assets/images/light_black.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Mulberry Clutch',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                                  const SizedBox(height: 8.0),
                                  Text('Series 7', style: TextStyle(color: Colors.grey),),
                                  const SizedBox(height: 8.0),
                                  Text('999',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.secondary),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 13.0 / 11.0,
                              child: Image.asset('assets/images/brown.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Mulberry Clutch',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                                  const SizedBox(height: 8.0),
                                  Text('Series 7', style: TextStyle(color: Colors.grey),),
                                  const SizedBox(height: 8.0),
                                  Text('999',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.secondary),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 13.0 / 11.0,
                              child: Image.asset('assets/images/brown_bag.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Mulberry Clutch',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                                  const SizedBox(height: 8.0),
                                  Text('Series 7', style: TextStyle(color: Colors.grey),),
                                  const SizedBox(height: 8.0),
                                  Text('999',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.secondary),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 13.0 / 11.0,
                              child: Image.asset('assets/images/brown_bag.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Mulberry Clutch',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                                  const SizedBox(height: 8.0),
                                  Text('Series 7', style: TextStyle(color: Colors.grey),),
                                  const SizedBox(height: 8.0),
                                  Text('999',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.secondary),),

                                ],
                              ),
                            ),
                          ],
                        ),
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
