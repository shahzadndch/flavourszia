import 'package:flavours_food/utils/Dimensions.dart';
import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  SmallText({Key? key, required this.text,
    this.color = const Color(0xffccc7c5),
    this.size=0,
    this.height=1.5,
    }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize:size==0?Dimensions.font12:size,
          height: height,
      ),
    );
  }
}
