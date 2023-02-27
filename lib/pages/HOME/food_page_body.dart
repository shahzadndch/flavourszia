import 'package:dots_indicator/dots_indicator.dart';
import 'package:flavours_food/utils/colors.dart';
import 'package:flavours_food/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../../utils/Dimensions.dart';
import '../../widgets/app_column.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController= PageController(viewportFraction: 0.9);
  var _currPageValue=0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  var itemCount;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue= pageController.page!;
      });
    });
  }
  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // print("height is"+MediaQuery.of(context).size.height.toString());
   // print("width is"+MediaQuery.of(context).size.width.toString());
    return Column(
      children: [
          Container(
          // color: Colors.redAccent,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount:7,
              itemBuilder:(context, position){

                return _buildPageItem(position);
              }),
        ),
           DotsIndicator(
              dotsCount:7,
              position: _currPageValue,
              decorator: DotsDecorator(
              size: const Size.square(8.0),
              activeSize: const Size(16.0, 8.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.radius05)),
            ),
    ),
           SizedBox(height: Dimensions.height30,),
           Container(
                margin: EdgeInsets.only(left: Dimensions.width15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:[
                     BigText(text: "Flavour's Popular",size: 17,),
                     SizedBox(width: Dimensions.width05,),
                     Container(
                         margin:const EdgeInsets.only(bottom:3),
                         child: BigText(text: ".",color: Colors.black26,),
              ),
                     SizedBox(width: Dimensions.width10,),
                     Container(
                        margin:const EdgeInsets.only(bottom:2),
                        child: SmallText(text: "FoodPairing",color: Colors.black26,),
                    ),

                ]
                ),
              ),
            //List of popular foods

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width05,right: Dimensions.width05,bottom: Dimensions.height05),
                  child: Row(
                    children: [
                      Container(
                        width:Dimensions.width120,
                        height: Dimensions.height120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                         // color: Colors.red,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/image/food1.png"
                            )
                          )

                        ),
                      ),
                      Expanded(
                          child: Container(
                            height: Dimensions.height110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight:Radius.circular(Dimensions.radius05),
                                  bottomRight:Radius.circular(Dimensions.radius05)
                              ),
                              color: Colors.white,


                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Nutritious Food In Phool Nagar Nutritious Food In Phool Nagar"),
                                SizedBox(height: Dimensions.height10,),
                                SmallText(text: "with Chineese charachteristics"),
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

                              ],
                            ),
                            )
                            ),
                          ),

                     ] )

                  );
              }
          ),
       ]
    );
  }


  Widget _buildPageItem(int index){
    Matrix4 matrix =  Matrix4.identity();
        if(index==_currPageValue.floor()){
          var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
          var currTrans = _height*(1-currScale)/2;
          matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
        }else if(index==_currPageValue.floor()+1){
          var currScale =_scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
          var currTrans = _height*(1-currScale)/2;
          matrix = Matrix4.diagonal3Values(1, currScale, 1);
          matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
        }else if(index==_currPageValue.floor()-1){
          var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
          var currTrans = _height*(1-currScale)/2;
          matrix = Matrix4.diagonal3Values(1, currScale, 1);
          matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
        }else{
          var currScale=0.8;
          var currTrans = _height*(1-currScale)/2;
          matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
        }

    return Transform(
        transform: matrix,
        child: Stack(
        children: [
                Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left:Dimensions.width05, right:Dimensions.width05),
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(Dimensions.radius30),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food1.png",
                    )
                )
            ),),
              Align(
                alignment: Alignment.bottomCenter,
                 child:  Container(
                      height: Dimensions.pageViewText,
                      margin: EdgeInsets.only(left:Dimensions.width20,right:Dimensions.width20,bottom:Dimensions.height15,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe8e8e8),
                            blurRadius: 2.0,
                            offset: Offset(0,8),
                             ),
                          BoxShadow(
                                color: Colors.white,
                               // blurRadius: 5.0,
                                offset: Offset(-5,0),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            // blurRadius: 5.0,
                            offset: Offset(5,0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(Dimensions.radius30),
                      ),
                     child : Container(
                        padding: EdgeInsets.only(left:Dimensions.width05, right:Dimensions.width05,top: Dimensions.height15),
                          child: AppColumn(text: 'Flavour\'s  Special'),
                    ),
                ),
              )
            ],
      )
    );
    }
}
