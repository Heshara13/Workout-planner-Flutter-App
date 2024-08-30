import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:fifth_app_workout_planner/Constants/constant_values.dart';
import 'package:flutter/material.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseImageUrl;
  final int noOfMinutes;
  final bool isAdded;
  final bool isfavourite;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavExercise;
  const AddExerciseCard(
      {super.key,
      required this.exerciseTitle,
      required this.noOfMinutes,
      required this.exerciseImageUrl,
      required this.toggleAddExercise,
      required this.isAdded,
      required this.toggleAddFavExercise, 
      required this.isfavourite});

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //height: 200,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kCardBgColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              widget.exerciseImageUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${widget.noOfMinutes.toString()} Minutes",
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: kSubtitleColor),
            ),
            SizedBox(
              height: 5,
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
                            widget.toggleAddExercise();
                          },
                          icon: Icon(
                            widget.isAdded ? Icons.remove : Icons.add,
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
                            widget.toggleAddFavExercise();
                          },
                          icon: Icon(
                            widget.isfavourite ? Icons.favorite : Icons.favorite_border,
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
