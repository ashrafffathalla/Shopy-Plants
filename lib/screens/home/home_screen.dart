import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/cubit/cubit.dart';
import 'package:plant_app/cubit/states.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon:SvgPicture.asset("assets/icons/menu.svg"),
        ),
      ),
      /* bottomNavigationBar: BottomNavigationBar(
             currentIndex: AppCubit.get(context).currentIndex,
             onTap: (index){
               AppCubit.get(context).changeIndex(index);
             },
             items: [
               BottomNavigationBarItem(
                 icon: SvgPicture.asset('assets/icons/flower.svg'),
                 label: 'Home',
               ),
               BottomNavigationBarItem(
                 icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
                 label: 'Favorites',
               ),
               BottomNavigationBarItem(
                 icon: SvgPicture.asset('assets/icons/user-icon.svg'),
                 label: 'Home',
               ),
             ],
           ),*/
      body: Body(),
      bottomNavigationBar: Container(
        padding:const EdgeInsets.only(
          right: defaultPadding /2,
          left: defaultPadding /2,
        ),
        height: 65.0,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset:const Offset(0 , -10),
                blurRadius: 35,
                color: primaryColor.withOpacity(0.38),
              ),
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (){},
                icon: SvgPicture.asset('assets/icons/flower.svg'),
            ),
            IconButton(
                onPressed: (){},
                icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
            ),
            IconButton(
                onPressed: (){},
              icon: SvgPicture.asset('assets/icons/user-icon.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
