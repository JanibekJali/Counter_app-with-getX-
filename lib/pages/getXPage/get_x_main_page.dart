import 'package:counter_app/app_data/getX_controler/controller/controller.dart';
import 'package:counter_app/constants/borders/app_borders.dart';
import 'package:counter_app/constants/colors/app_colors.dart';
import 'package:counter_app/constants/paddings/app_padding.dart';
import 'package:counter_app/constants/sizedBox/app_sized_box.dart';
import 'package:counter_app/constants/textStyles/app_text_styles.dart';
import 'package:counter_app/constants/texts/app_texts.dart';
import 'package:counter_app/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_button.dart';

class GetXMainPage extends StatelessWidget {
  GetXMainPage({Key key}) : super(key: key);
  final CounterController _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppTexts.counterApp)),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.to(SecondPage(
                  kelgenSan: _counterController.number.value.toString(),
                )),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.bigButton,
                    border: Border.all(
                      color: AppColors.bigButton,
                    ),
                    borderRadius: AppBorders.b12circular,
                  ),
                  child: Padding(
                    padding: AppPaddings.bigPadding,
                    child: Text(
                      'Caн: ${_counterController.number}',
                      style: AppTextStyles.mainText,
                    ),
                  ),
                ),
              ),
              AppSizedBox.sb55,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    icon: Icons.remove,
                    onTap: () => _counterController.decrement(),
                  ),
                  CustomButton(
                    icon: Icons.add,
                    onTap: () => _counterController.increment(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
