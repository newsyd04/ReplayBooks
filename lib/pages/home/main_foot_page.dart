import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/utils/colors.dart';
import 'package:shop_app/widgets/big_text.dart';
import 'package:shop_app/widgets/small_text.dart';

import '../../utils/dimensions.dart';
import 'food_page_body.dart';

class mainFootPage extends StatefulWidget {
  const mainFootPage({Key? key}) : super(key: key);

  @override
  State<mainFootPage> createState() => _mainFootPageState();
}

class _mainFootPageState extends State<mainFootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Showing the header
          Container(
            margin: EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Username", color: AppColors.mainColor),
                        Row(
                          children: [
                            SmallText(text: "Limerick", color: Colors.black54),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          child: Icon(Icons.search, color:Colors.white, size:Dimensions.iconSize24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                            color: AppColors.mainColor,
                          )
                      ),
                    )
                  ]
              ),
            ),
          ),
          //Showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );

  }
}
