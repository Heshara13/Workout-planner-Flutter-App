import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:flutter/material.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentname;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalories;
  const EquipmentCard({
    super.key, 
    required this.equipmentname, 
    required this.equipmentDescription, 
    required this.equipmentImageUrl, 
    required this.noOfMinuites, 
    required this.noOfCalories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kCardBgColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipmentname,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(equipmentImageUrl,fit: BoxFit.cover,width: 100,),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${noOfMinuites.toString()} of workout",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kSubPinkColor
                    ),),
                    Text("${noOfCalories.toString()} of calories burned",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kSubPinkColor
                    ),),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text(equipmentDescription,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: kMainBlackColor
              ),)
          ],
        ),
      ),
    );
  }
}