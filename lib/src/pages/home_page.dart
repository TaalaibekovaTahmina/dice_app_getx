// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:dice_app_getx/controller/dice_controller.dart';
import 'package:dice_app_getx/src/widgets/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ctl = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Tapshurma 5',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Obx(
          () {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DiceWidget(
                  onTap: ctl.baskanda,
                  solJakKubik: ctl.teksher(ctl.solJakKubik),
                ),
                DiceWidget(
                  onTap: ctl.baskanda,
                  solJakKubik: ctl.teksher(ctl.onJakKubik.value),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
