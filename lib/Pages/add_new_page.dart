import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Data/exercise_data.dart';
import 'package:fifth_app_workout_planner/Data/user_data.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';
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
                          exerciseImageUrl: exercise.exerciseImageUrl
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
