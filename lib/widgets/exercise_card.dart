import 'package:fifth_app_workout_planner/Constants/colors.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  const ExerciseCard({
    super.key, 
    required this.title, 
    required this.imageUrl, 
    required this.description
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        color: kCardBgColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            //blurRadius: 2
          )
        ]
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text(title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 10,),
          Image.asset(imageUrl,
          width: 90,
          //height: 60,
          fit: BoxFit.cover,
          ),
          const SizedBox(height: 10,),
          Text(description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: kMainColor
          ),),
        ],
      ),
    ) ;
  }
}
