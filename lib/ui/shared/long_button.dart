import 'package:flutter/material.dart';

import '../../general_widgets/custom_text.dart';
import 'shared.dart';

class LongButton extends StatelessWidget {
  final Function() onPressed;
  final String label;
  final Color? outlineColor;
  final double? height;
  final double? width;

  const LongButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.outlineColor,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      fillColor: AppColors.zuriPrimaryColor,
      constraints: BoxConstraints.tightFor(
        height: height ?? 48,
        width: width ?? MediaQuery.of(context).size.width.clamp(240.0, 560.0),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: FittedBox(
        child: CustomText(
          text: '$label',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
