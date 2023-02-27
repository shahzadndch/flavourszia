import 'package:flavours_food/utils/Dimensions.dart';
import 'package:flavours_food/widgets/small_text.dart';
import 'package:flavours_food/widgets/big_text.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

              child: Container(
                 margin:  EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
                 padding:  EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Phool Nagar", color: AppColors.mainColor,),
                        Row(
                          children:[
                            SmallText(text:"Colony", color: Colors.black54),
                          /*  decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.mainColor,
                            ),*/
                            Icon(Icons.arrow_drop_down)
                          ],
                 ),
                ],
                    ),

                    Center (
                        child: Container(
                            width: Dimensions.height45,
                            height: Dimensions.height45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius05),
                                color: AppColors.mainColor,
                        ),
                        child: Icon(Icons.search,color: AppColors.white,size:Dimensions.iconSize24),
                      ),
                    ), //box searching
                  ],
                ),
              )),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      )

    );
  }
}
