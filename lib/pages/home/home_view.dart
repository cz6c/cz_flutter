import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/index.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.Calculator);
              },
              child: const Text(
                "Calculator",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog();
              },
              child: const Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Snackbar 标题", "欢迎使用Snackbar");
              },
              child: const Text("Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Wrap(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.wb_sunny_outlined),
                      title: const Text("白天模式"),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.wb_sunny),
                      title: const Text("黑夜模式"),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    )
                  ],
                ));
              },
              child: const Text("Bottom Sheet"),
            )
          ],
        ),
      ),
    );
  }
}
