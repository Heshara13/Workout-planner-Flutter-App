import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:flutter/material.dart';

class AddEquipmentCard extends StatefulWidget {
  final String name;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalories;
  final bool isEqAdded;
  final bool isFavEqAdded; // to track icons whether is changed
  final void Function() toggleAddEquipment;
  final void Function() toggleAddFavEquipment;

  const AddEquipmentCard(
      {super.key,
      required this.name,
      required this.equipmentDescription,
      required this.equipmentImageUrl,
      required this.noOfMinuites,
      required this.noOfCalories,
      required this.toggleAddEquipment,
      required this.isEqAdded,
      required this.toggleAddFavEquipment, 
      required this.isFavEqAdded});

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      //height: 300,
      decoration: BoxDecoration(
          color: kCardBackgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 2), blurRadius: 2)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.equipmentImageUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.equipmentDescription,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: kMainDarkBlueColor),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Time : ${widget.noOfMinuites.toString()} min and ${widget.noOfCalories.toString()} Calories Burned",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: kSubtitleColor),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kSubtitleColor.withOpacity(0.2)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            widget.toggleAddEquipment();
                          },
                          icon: Icon(
                            widget.isEqAdded ? Icons.remove : Icons.add,
                            size: 30,
                            color: kMainDarkBlueColor,
                          )),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kSubtitleColor.withOpacity(0.2)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            widget.toggleAddFavEquipment();
                          },
                          icon: Icon(
                            widget.isFavEqAdded 
                            ? Icons.favorite 
                            : Icons.favorite_border,
                            size: 30,
                            color: kMainpinkColor,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
