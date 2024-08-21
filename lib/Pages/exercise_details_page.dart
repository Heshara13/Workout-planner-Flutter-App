import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';
import 'package:fifth_app_workout_planner/widgets/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> ex_List;
  const ExerciseDetailsPage(
      {super.key,
      required this.exerciseTitle,
      required this.exerciseDescription,
      required this.ex_List});

  @override
  State<ExerciseDetailsPage> createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
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
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formattedDate.toUpperCase(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: kSubtitleColor,
              ),
            ),
            Text(
              widget.exerciseTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kMainColor,
              ),
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
                widget.exerciseDescription,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: kMainColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,// column kiyktd kadagane
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding),
                itemCount: widget.ex_List.length, // how many items are build
                itemBuilder: (context, index) {
                  Exercise exercise = widget.ex_List[index];
                  return ExerciseCard(
                      title: exercise.exerciseName,
                      imageUrl: exercise.exerciseImageUrl,
                      description: "${exercise.noOfMinuites} of workout");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
