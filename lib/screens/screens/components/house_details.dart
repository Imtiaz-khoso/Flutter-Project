import 'package:flutter/material.dart';
import 'package:zame_rent/constants/constants.dart';

import '../../../model/house.dart';
class HouseDetails extends StatefulWidget {

  final House house;
  HouseDetails(this.house);


  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {



    Size size= MediaQuery.of(context).size;

    return Expanded(
        child: ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
        children: [
          Padding(padding: EdgeInsets.only(
              bottom: appPadding,
              left: appPadding,
              right: appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text('\$${widget.house.price.toStringAsFixed(3)}',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(height: 5,),
                   Text( widget.house.address,
                      overflow: TextOverflow.ellipsis ,
                      style:  TextStyle(
                        fontSize: 15,
                       color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                      ),

                    ),
                  ],
                ),
                Text(
                  '${widget.house.time} hours ago',

                  overflow: TextOverflow.ellipsis ,
                  style:  TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),

                ),
              ],
            ),
           ),
          const Padding(
            padding:  EdgeInsets.only(left:appPadding,bottom: appPadding ),
            child: Text(
              'House Information',
              overflow: TextOverflow.ellipsis ,
              style:  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                Padding(padding: EdgeInsets.only(left: appPadding,bottom: appPadding,),
                child:Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    border:Border.all(color: black.withOpacity(0.4),)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.house.sqFeet.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Square foot',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      )

                    ],
                  ),
                )
                  ),

                // bedrooms
                Padding(padding: EdgeInsets.only(left: appPadding,bottom: appPadding,),
                    child:Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          border:Border.all(color: black.withOpacity(0.4),)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.house.bedRooms.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Bed Rooms',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          )

                        ],
                      ),
                    )
                ),

                // bathroom
                Padding(padding: EdgeInsets.only(left: appPadding,bottom: appPadding,),
                    child:Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          border:Border.all(color: black.withOpacity(0.4),)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.house.bathRooms.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Bath Rooms',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          )

                        ],
                      ),
                    )
                ),

                // Garages
                Padding(
                    padding: EdgeInsets.only(left: appPadding,bottom: appPadding,),
                    child:Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          border:Border.all(color: black.withOpacity(0.4),)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.house.garages.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Garages',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          )

                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: appPadding,
          right: appPadding,
            bottom: appPadding * 4,
          ),
            child: Text(widget.house.description,style: TextStyle(
              color: black.withOpacity(0.4),height: 1.5,
            ),),
          )

      ],

    ),
    );
  }
}
