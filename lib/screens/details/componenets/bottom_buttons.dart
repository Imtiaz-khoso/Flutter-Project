import 'package:flutter/material.dart';
import 'package:zame_rent/constants/constants.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.4,
            height: 60,
            decoration: BoxDecoration(
              color: darkBlue,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(
                color: darkBlue.withOpacity(0.6),
                offset: Offset(0,10),
                  blurRadius: 10,
              )]
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon((Icons.message),color: white,),
                Text(' Message',style: TextStyle(color: white,fontSize: 16,
                fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Container(
            width: size.width * 0.4,
            height: 60,
            decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                  color: darkBlue.withOpacity(0.6),
                  offset: Offset(0,10),
                  blurRadius: 10,
                )]
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon((Icons.call_rounded),color: white,),
                Text(' Calls',style: TextStyle(color: white,fontSize: 16,
                    fontWeight: FontWeight.w500),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
