import 'package:flavours_food/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../utils/Dimensions.dart';
import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(text: text,size: Dimensions.font20),
          SizedBox(height: Dimensions.height10,),
          Row(
            children: [
              Wrap(
                  children: List.generate(5, (index) => Icon(Icons.star, color:AppColors.mainColor,size: Dimensions.iconSize15,))
              ),
              SizedBox(width: Dimensions.width05,),
              SmallText(text: "4.5"),
              SizedBox(width: Dimensions.width10,),
              SmallText(text: "1287"),
              SizedBox(width: Dimensions.width05,),
              SmallText(text: "comments"),
            ],
          ),
          SizedBox(height: Dimensions.height10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndTextWidget(icon: Icons.circle_sharp,
                  text: 'Normal',
                  iconColor: AppColors.iconColor1),
              IconAndTextWidget(icon: Icons.location_on,
                  text: '1.7 km',
                  iconColor: AppColors.mainColor),
              IconAndTextWidget(icon: Icons.access_time_rounded,
                  text: '32 min',
                  iconColor: AppColors.iconColor2)
            ],
          ),
        ]
    );
  }
}
