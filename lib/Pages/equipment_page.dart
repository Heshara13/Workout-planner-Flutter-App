import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Models/equipment_model.dart';
import 'package:fifth_app_workout_planner/widgets/equipment_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String euuipmentDescription;
  final List<Equipment> equipmentList;
  const EquipmentDetailsPage(
      {super.key,
      required this.equipmentTitle,
      required this.euuipmentDescription,
      required this.equipmentList});

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  // Date and time formatters
  final DateFormat formetter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "$formattedDate $formatterDay",
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kSubtitleColor),
            ),
            Text(
              widget.equipmentTitle,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: kSubtitleColor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                widget.euuipmentDescription,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: kMainBlackColor),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                    childAspectRatio: 3/2,
                    ),
                    itemCount: widget.equipmentList.length,
                itemBuilder: (context, index) {
                  Equipment equipment =
                      widget.equipmentList[index]; // think as for loop
                  return EquipmentCard(
                      equipmentname: equipment.name,
                      equipmentDescription: equipment.equipmentDescription,
                      equipmentImageUrl: equipment.equipmentImageUrl,
                      noOfMinuites: equipment.noOfMinuites,
                      noOfCalories: equipment.noOfCalories);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
