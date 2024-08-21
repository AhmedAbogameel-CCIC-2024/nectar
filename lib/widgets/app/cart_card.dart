import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://static.vecteezy.com/system/resources/previews/029/200/269/non_2x/banana-transparent-background-free-png.png',
          height: 80,
          width: 80,
        ),
        SizedBox(width: 20.width),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      title: 'Banana',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8.width),
                  Icon(
                    FontAwesomeIcons.xmark,
                    color: AppColors.grey,
                  ),
                ],
              ),
              SizedBox(height: 4.height),
              AppText(
                title: '1kg, Price',
                color: AppColors.grey,
              ),
              SizedBox(height: 12.height),
              Row(
                children: [
                  _CounterButton(
                    icon: FontAwesomeIcons.minus,
                    iconColor: AppColors.grey,
                  ),
                  AppText(
                    title: '1',
                    fontSize: 16.font,
                    fontWeight: FontWeight.w600,
                    padding: EdgeInsets.symmetric(horizontal: 16.width),
                  ),
                  _CounterButton(
                    icon: FontAwesomeIcons.plus,
                    iconColor: AppColors.primary,
                  ),
                  Expanded(
                    child: AppText(
                      title: "\$4.99",
                      fontSize: 16.font,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    Key? key,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.width,
      height: 44.height,
      child: Icon(
        icon,
        color: iconColor,
        size: 20.height,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.radius),
        border: Border.all(
          color: AppColors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}
