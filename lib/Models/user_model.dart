import 'package:fifth_app_workout_planner/Models/equipment_model.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String address;
  final String gender;
  final int age;
  final String description;
  int totalExerciseCompleted =0;
  int totalEquipmentsHandovered =0;

  final List<Exercise> exerciseList; // user enroll una list eka
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.totalExerciseCompleted,
    required this.totalEquipmentsHandovered,
    required this.userId, 
    required this.fullName, 
    required this.address, 
    required this.gender, 
    required this.age, 
    required this.description, 
    required this.exerciseList, 
    required this.equipmentList,
    required this.favExerciseList, 
    required this.favEquipmentList, 
    });
}