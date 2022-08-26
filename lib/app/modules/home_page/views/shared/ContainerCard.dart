import 'package:e_commerce_store_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
final String? name;
final String? subTitle;
final double? price;
final String? image;
Function()? onTap;
ContainerCard({this.name, this.onTap, this.image, this.price,this.subTitle});


  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 13.0 / 11.0,
              child: Image.asset('assets/images/brown_bag.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                Text('Mulberry Clutch',style: TextStyle(fontSize:14, fontWeight: FontWeight.w600),),
                  SizedBox(height: 8.0),
                  Text('Series 7', style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 8.0),
                  Text('\$799',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.secondary),),

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}