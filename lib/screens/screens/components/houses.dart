import 'package:flutter/material.dart';
import 'package:zame_rent/constants/constants.dart';
import 'package:zame_rent/data/data.dart';
import 'package:zame_rent/screens/details/details_screen.dart';

import '../../../model/house.dart';


class Houses extends StatefulWidget {
  const Houses({super.key});

  @override
  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  Widget _buildHouse(BuildContext context , int index){
    Size size = MediaQuery.of(context).size;
    House house = houseList[index];
    
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (_)=> DetailsScreen(house: house),),);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: appPadding,vertical: appPadding/2 ),
      child: Container(
        height: 250 ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      
            Stack(
      
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    height: 180,
                    width: size.width,
                     fit: BoxFit.cover,
                    image: AssetImage(house.imageUrl),),
                ),
                Positioned(
                  right: appPadding/2,
                  top: appPadding /2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: house.isFav ? Icon(Icons.favorite_rounded,
                      color: red,) :
                      Icon (Icons.favorite_border_outlined,
                      color: black),
                      onPressed: (){
                        setState(() {
                          house.isFav =! house.isFav;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text('\$${house.price.toStringAsFixed(3)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    house.address ,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                    fontSize: 15,
                    color: black.withOpacity(0.4),
                  ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${house.bedRooms} bedrooms / ',style:
                  TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  '${house.bathRooms} Bathroom / ',style:
                TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
                ),
                Text(
                  '${house.sqFeet} sqft',
                  style:
                TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
                ),
              ],
            )
      
          ],
        ),
      
      ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
      physics: BouncingScrollPhysics(),
        itemCount: houseList.length,
        itemBuilder: (context, index) {
        return _buildHouse(context,index);

      },
    ),
    );
  }
}
