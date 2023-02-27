import 'package:flavours_food/utils/Dimensions.dart';
import 'package:flavours_food/utils/colors.dart';
import 'package:flavours_food/widgets/app_icon.dart';
import 'package:flavours_food/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: BigText(size: Dimensions.font24 + 2, text: "Chikken Tikka Pizza")),
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.height15),
                      topLeft: Radius.circular(Dimensions.height15),
                    )
                ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.mainColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    child: ExpandableTextWidget(text: "  v  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 eru nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nen nngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug neng nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nenngev  fue ngu eng f ve ung9 erug nev ej ge  nngev  fue ngu eng f ve ung9 erug nev ej ge  nngev  fue ngu eng f ve ung9 erug nev ej ge  nngev  fue ngu eng f ve ung9 erug nev ej ge  nngev  fue ngu eng f ve ung9 erug nev ej ge  nngev  fue ngu eng f ve ung9 erug nev ejg"),
                  )
                ],
              )
          )
        ],),
      bottomNavigationBar: Column(

        mainAxisSize:MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*1.5,
              right: Dimensions.width20*1.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize:Dimensions.iconSize20,
                    iconColor:Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "\$ "+"12.88 "+" X "+" 0 ",color: AppColors.mainBlackColor,size: Dimensions.font24,),
                AppIcon(iconSize:Dimensions.iconSize20,
                    iconColor:Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.add),

              ],

            ),

          ),
          Container(
            height: Dimensions.height120,

            padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width10*2/3,right: Dimensions.width10*2/3),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius30,),
                  topRight: Radius.circular(Dimensions.radius30,),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width05,right: Dimensions.width05),


                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width10,right: Dimensions.width10),
                  child: BigText(text: "\$ 12 | Add to cart",),

                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                  ),


                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
