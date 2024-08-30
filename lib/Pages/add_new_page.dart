import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Data/equipment_data.dart';
import 'package:fifth_app_workout_planner/Data/exercise_data.dart';
import 'package:fifth_app_workout_planner/Data/user_data.dart';
import 'package:fifth_app_workout_planner/Models/equipment_model.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';
import 'package:fifth_app_workout_planner/widgets/add_equipment_card.dart';
import 'package:fifth_app_workout_planner/widgets/add_exercise_card.dart';
import 'package:flutter/material.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final userData = user; // import the user
  final exerciseList = ExerciseData().exerciseList; //exerciseList
  final equipmentList = EquipmentData().equipmentList; //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${userData.fullName}",
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kMainBlackColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Let's add Some workouts and Equipment for today!",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kMainColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "All Exercises",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kMainBlackColor),
                ),
                SizedBox(
                  height: 15,
                ),
                //list view to scroll horizontally
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.36,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        noOfMinutes: exercise.noOfMinuites,
                        exerciseImageUrl: exercise.exerciseImageUrl,
                        isAdded: userData.exerciseList.contains(exercise),
                        isfavourite:
                            userData.favExerciseList.contains(exercise),
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                              print(userData.exerciseList.length);
                            } else {
                              userData.addExercise(exercise);
                              print(userData.exerciseList.length);
                            }
                          });
                        },
                        toggleAddFavExercise: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                              print(userData.favExerciseList.length);
                            } else {
                              userData.addExercise(exercise);
                              print(userData.favExerciseList.length);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                const Text(
                  "All Equipments",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kMainBlackColor),
                ),
                SizedBox(
                  height: 15,
                ),

                // list view the scrolls vertically
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: equipmentList.length,
                    itemBuilder: (context, index) {
                      Equipment equipment = equipmentList[index];

                      return AddEquipmentCard(
                        name: equipment.name,
                        equipmentDescription: equipment.equipmentDescription,
                        equipmentImageUrl: equipment.equipmentImageUrl,
                        noOfMinuites: equipment.noOfMinuites,
                        noOfCalories: equipment.noOfCalories,
                        isEqAdded: userData.equipmentList.contains(equipment),
                        isFavEqAdded:
                            userData.favEquipmentList.contains(equipment),
                        toggleAddEquipment: () {
                          setState(() {
                            if (userData.equipmentList.contains(equipment)) {
                              userData.removeEquipment(equipment);
                            } else {
                              userData.addEquipment(equipment);
                            }
                          });
                        },
                        toggleAddFavEquipment: () {
                          setState(() {
                            if (userData.favEquipmentList.contains(equipment)) {
                            userData.removeFavEquipment(equipment);
                          } else {
                            userData.addFavEquipment(equipment);
                          }
                          });
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
