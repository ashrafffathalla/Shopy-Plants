import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/cubit/cubit.dart';
import 'package:plant_app/cubit/states.dart';
import 'package:plant_app/model/feature_plants_model.dart';
import 'package:plant_app/model/plants.dart';
import 'package:plant_app/screens/details/details_screen.dart';
class Body extends StatelessWidget {
  const Body ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    final List<PlantsModel> plants = PlantsModel.plants;
    final List<FeaturePlants> features = FeaturePlants.features;

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        children:[
          Container(
            margin:const EdgeInsets.only(bottom: defaultPadding *2.5),
            height: size.height *0.2,
            child: Stack(
              children:
              [
                Container(
                  height: size.height *0.2 -27,
                  decoration:const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(36),
                      bottomRight:Radius.circular(36),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:
                      [
                        BoxShadow(
                          //offset: Offset(0, 10),
                          blurRadius: 50,
                          color: primaryColor.withOpacity(0.20),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: primaryColor.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),

                        ),
                        SvgPicture.asset('assets/icons/search.svg'),
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: 75,
                  ),
                  child: Row(
                    children:
                    [
                      Text(
                        'Hi UiShopy!',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      const Spacer(),
                      Image.asset('assets/images/logo.png'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              children:[
                const Padding(
                  padding:  EdgeInsets.only(left: 14),
                  child:  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize:20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: (){},
                  child: const Padding(
                    padding:EdgeInsets.all(3),
                    child: Text('More'),
                  ),
                  style: TextButton.styleFrom(
                    padding:  const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 9.0,
                    ),
                    backgroundColor: primaryColor,
                    primary: Colors.white,
                    minimumSize: const Size(1, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics:const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(plants.length, (index) => InkWell(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const DetailsScreen()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    left: defaultPadding,
                    top: defaultPadding / 2,
                    bottom: defaultPadding * 1.8,
                  ),
                  width: size.width * 0.4,
                  child: Column(
                    children:[
                      Image.asset(plants[index].image!),
                      Container(
                        padding:const EdgeInsets.all(defaultPadding /2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:const BorderRadius.only(
                              bottomLeft:Radius.circular(10.0),
                              bottomRight:Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset:const Offset(0, 10),
                                blurRadius: 50,
                                color: primaryColor.withOpacity(0.23),
                              ),
                            ]
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: plants[index].name,
                                        style: Theme.of(context).textTheme.button,
                                      ),
                                      TextSpan(
                                        text: plants[index].country,
                                        style: TextStyle(
                                          color: primaryColor.withOpacity(0.5),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              plants[index].price!,
                              style: Theme.of(context).textTheme.button!.copyWith(
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 14,
                right: 8
            ),
            child: Row(
              children:[
                const Padding(
                  padding:  EdgeInsets.only(left: 14),
                  child:  Text(
                    'Featured Plants',
                    style: TextStyle(
                      fontSize:20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: (){},
                  child:const Padding(
                    padding:  EdgeInsets.all(3),
                    child: Text('More'),
                  ),
                  style: TextButton.styleFrom(
                    padding:  const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 9.0,
                    ),
                    backgroundColor: primaryColor,
                    primary: Colors.white,
                    minimumSize: const Size(1, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics:const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(features.length, (index) => Container(
                margin:const EdgeInsets.only(
                  left: defaultPadding,
                  top:defaultPadding / 2,
                  bottom: defaultPadding /2,
                ),
                width: size.width * 0.8,
                height: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(features[index].image!),
                    )
                ),
              ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
