import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Data/user_data.dart';
import 'package:fifth_app_workout_planner/Models/equipment_model.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  // Date and time formatters
  final DateFormat formetter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  // User Data

  final userData = user;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: kSubtitleColor),
                ),
                Text(
                  userData.fullName,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: kSubtitleColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Here are your all favourite workouts",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: kMainColor),
                ),
                const SizedBox(
                  height: 15,
                ),

                // exercise gridview
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisExtent: kDefaultPadding,
                      childAspectRatio: 16/17
                      ),
                  itemCount: userData.favExerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise favExercise = userData.favExerciseList[index];

                    return Card(
                      color: kCardBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Column(
                          children: [
                            Text(favExercise.exerciseName,style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 10,),
                            Image.asset(
                              favExercise.exerciseImageUrl,
                              width: 100,
                              fit: BoxFit.cover,
                              ),
                            const SizedBox(height: 10,),
                            Text(
                              "${favExercise.noOfMinuites.toString()} Min Workout",style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: kMainLightBlueColor
                            ),),
                            ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Here are your all favourite Equipments",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: kMainColor),
                ),
                const SizedBox(
                  height: 15,
                ),

                // exercise gridview
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisExtent: kDefaultPadding,
                      childAspectRatio: 16/19
                      ),
                  itemCount: userData.favEquipmentList.length,
                  itemBuilder: (context, index) {
                    Equipment favEquipment = userData.favEquipmentList[index];

                    return Card(
                      color: kCardBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Column(
                          children: [
                            Text(favEquipment.name,style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 10,),
                            Image.asset(
                              favEquipment.equipmentImageUrl,
                              width: 100,
                              fit: BoxFit.cover,
                              ),
                            const SizedBox(height: 10,),
                            Text(
                              "${favEquipment.noOfMinuites.toString()} Min Workout",style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: kMainLightBlueColor
                            ),),
                            const SizedBox(height: 10,),
                            Text(
                              favEquipment.equipmentDescription,style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: kMainLightBlueColor
                            ),
                            textAlign: TextAlign.center,
                            ),
                            ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
