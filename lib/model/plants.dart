import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class PlantsModel
{
  String? image;
  String? name;
  String? country;
  String? price;
  Function? press;

  PlantsModel({
   required this.image,
   required this.name,
   required this.country,
   required this.price,
   required this.press,
});
  //create new plant
static List<PlantsModel> plants =
[
PlantsModel(
    image: 'assets/images/image_1.png',
    name: 'False\n',
    country: 'Egypt',
    price: '\$400',
    press:(BuildContext context)
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>const DetailsScreen()),
      );
    },
),

PlantsModel(
    image: 'assets/images/image_2.png',
    name: 'Cypres\n',
    country: 'Russia',
    price: '\$800',
  press:(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>const DetailsScreen()),
    );
  },
),
PlantsModel(
    image: 'assets/images/image_3.png',
    name: 'False\n',
    country: 'Russia',
    price: '\$200',
  press:(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>const DetailsScreen()),
    );
  },
),
PlantsModel(
    image: 'assets/images/image_1.png',
    name: 'False \n',
    country: 'Russia',
    price: '\$100',
  press:(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>const DetailsScreen()),
    );
  },
),
  ];
}