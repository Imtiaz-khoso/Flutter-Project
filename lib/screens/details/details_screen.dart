import 'package:flutter/material.dart';
import 'package:zame_rent/screens/details/componenets/bottom_buttons.dart';
import 'package:zame_rent/screens/details/componenets/custom_app_bar.dart';
import '../../model/house.dart';
import '../screens/components/house_details.dart';
import 'componenets/carousel_images.dart';

class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({super.key, required this.house});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CarouselImages(widget.house.moreImagesUrl),
                  CustomAppBar(),
                ],
              ),
              HouseDetails(widget.house),
            ],
          ),
          BottomButtons(),

        ],
      ),

    );
  }
}
