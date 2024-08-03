import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Data/user_data.dart';
import 'package:fifth_app_workout_planner/widgets/progress_card.dart';
import 'package:flutter/material.dart';
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
                const SizedBox(height: 20,),
                const ProgressCard(
                  progressValue: 0.5, 
                  total: 100)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
