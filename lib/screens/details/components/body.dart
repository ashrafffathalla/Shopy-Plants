import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: size.height *0.8,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:defaultPadding * 3),
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: ()
                                {
                                  Navigator.pop(context);
                                },
                                  icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                              ),
                            ),
                          ),
                          const Spacer(),
                          //Start build icon cards
                          buildIconCard(icon:('assets/icons/sun.svg'),
                            size: MediaQuery.of(context).size,
                          ),
                          buildIconCard(icon:('assets/icons/icon_2.svg'),
                            size: MediaQuery.of(context).size,
                          ),
                          buildIconCard(icon:('assets/icons/icon_3.svg'),
                            size: MediaQuery.of(context).size,
                          ),
                          buildIconCard(icon:('assets/icons/icon_4.svg'),
                            size: MediaQuery.of(context).size,
                          ),
                        ],
                      ),
                    ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width *0.75,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: primaryColor.withOpacity(0.29),
                      ),
                    ],
                    image:const DecorationImage(
                      image: AssetImage(
                        'assets/images/img.png',
                      ),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: defaultPadding,
              top: defaultPadding * 1.5,
              left: defaultPadding,
            ),
            child: Row(
              children:
              [
                RichText(text:TextSpan(
                  children:[
                    TextSpan(text: 'Angelica\n',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(text: 'Egypt',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                ),
                const Spacer(),
                Text('\$440',
                  style: Theme.of(context).textTheme.headline5!.copyWith(color: primaryColor,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  color: primaryColor,
                  shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight:  Radius.circular(20),
                      ),
                  ),
                  onPressed:(){} ,
                  child:const Text('Buy Now',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),

                  ),
                ),
              ),
              Expanded(child: FlatButton(
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight:  Radius.circular(20),
                  ),
                ),
                color: Colors.grey[300],
                height: 87,
                onPressed: (){},
                  child:const Text('Description',),
              ),
              ),
            ], 
          ),
          const SizedBox(height: defaultPadding * 2,)
        ],
      ),
    );
  }






  Widget buildIconCard({
    size,
     String? icon,

})=>Container(
    padding:const EdgeInsets.all(defaultPadding / 2 ),
    margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
    height: 55,
    width: 55,
    decoration:BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(6),
      boxShadow:[
        BoxShadow(
          offset: const Offset(0, 15),
          blurRadius: 22.0,
          color: primaryColor.withOpacity(0.22),
        ),
        const BoxShadow(
          offset: Offset(-15, -15),
          blurRadius: 20.0,
          color: Colors.white,
        ),
      ],
    ),
    child: SvgPicture.asset(icon!),
  );
}
