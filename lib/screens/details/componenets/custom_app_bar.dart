import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    Size size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          left: appPadding,
          right: appPadding,
          top: appPadding),


      child: Container(
        height: size.height *.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(Icons.arrow_back_rounded,color: white,),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Icon(Icons.favorite_border_rounded,color: white,),
            )
          ],
        ),

      ),
    );
  }
}
