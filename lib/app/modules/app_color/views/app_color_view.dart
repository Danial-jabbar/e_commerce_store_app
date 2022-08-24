import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_color_controller.dart';

class AppColorView extends GetView<AppColorController> {
  const AppColorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppColorView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AppColorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
