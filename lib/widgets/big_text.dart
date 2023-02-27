import 'package:flavours_food/utils/Dimensions.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({Key? key,
    required this.text,
    this.color = const Color(0xff332d2b),
    this.size=0,
    this.overFlow=TextOverflow.ellipsis}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow:overFlow,
      style:TextStyle(
        fontFamily: 'Arial Rounded MT Bold',
        color: color,
        fontSize: size==0?Dimensions.font15:size,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
