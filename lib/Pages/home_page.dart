import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Data/equipment_data.dart';
import 'package:fifth_app_workout_planner/Data/exercise_data.dart';
import 'package:fifth_app_workout_planner/Data/user_data.dart';
import 'package:fifth_app_workout_planner/Pages/equipment_page.dart';
import 'package:fifth_app_workout_planner/Pages/exercise_details_page.dart';
import 'package:fifth_app_workout_planner/widgets/exercise_card.dart';
import 'package:fifth_app_workout_planner/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Date and time formatters
  final DateFormat formetter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  // User Data

  final userData = user;

  // exercise & discription
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList; //exercise data wla tiyna exercise list eka gnnw

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
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: kSubtitleColor),
                ),
                Text(
                  "${userData.fullName}",
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: kSubtitleColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProgressCard(progressValue: 0.5, total: 100),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Today's Activity",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseDetailsPage(
                                    exerciseTitle: 'Warm Up',
                                    exerciseDescription:
                                        'Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.',
                                    ex_List: exerciseList)));
                      },
                      child: ExerciseCard(
                          title: 'Warm Up',
                          imageUrl:
                              'assets/images/exercises/downward-facing.png',
                          description: 'See more...'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EquipmentDetailsPage(
                                    equipmentTitle: "Equipments",
                                    euuipmentDescription:
                                        "'Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.'",
                                    equipmentList: equipmentList)));
                      },
                      child: ExerciseCard(
                          title: 'Equipment',
                          imageUrl: 'assets/images/equipments/dumbbells2.png',
                          description: 'See more...'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseDetailsPage(
                                    exerciseTitle: 'Exercise',
                                    exerciseDescription:
                                        'Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.',
                                    ex_List: exerciseList)));
                      },
                      child: ExerciseCard(
                          title: 'Exercise',
                          imageUrl: 'assets/images/exercises/dragging.png',
                          description: 'See more...'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseDetailsPage(
                                    exerciseTitle: 'Streching',
                                    exerciseDescription:
                                        "Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.",
                                    ex_List: exerciseList)));
                      },
                      child: ExerciseCard(
                          title: 'Streaching',
                          imageUrl: 'assets/images/exercises/triangle.png',
                          description: 'See more...'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
