import 'package:fifth_app_workout_planner/Models/equipment_model.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String address;
  final String gender;
  final int age;
  final String description;
  int totalExerciseCompleted = 0;
  int totalEquipmentsHandovered = 0;

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

  // methods

  //method to add new eercise to the exerciseList
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  // method to remove a exercise from exerciseList
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  // method to add new fav exercise to the favoriteexerciseList
  void addFavExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  // method to remove from favorite exerciseList
  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }

  // method to add new equipment to the equipmentlist
  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
  }

  // method to remove equipment from equipmentlist
  void removeEquipment(Equipment equipment) {
    equipmentList.remove(equipment);
  }

  // method to add new equipment to the favourite equipmentlist
  void addFavEquipment(Equipment equipment) {
    favEquipmentList.add(equipment);
  }

  // method to remove equipment from the favourite equipmentlist
  void removeFavEquipment(Equipment equipment) {
    favEquipmentList.remove(equipment);
  }

  // method to calculate the total minutes spend
  int calculateTotalMinutesSpend() {
    int tatolMinutesSpend = 0;

    //loop through the exerciseList and calculate the no of minutes
    for (var exercise in exerciseList) {
      tatolMinutesSpend += exercise.noOfMinuites;
    }

    //loop through the exerciseList and calculate the no of minutes
    for (var equipment in equipmentList) {
      tatolMinutesSpend += equipment.noOfMinuites;
    }
    return tatolMinutesSpend;
  }

  //method to mark an exercise as completed
  void markExerciseAsCompleted(int exerciseId) {
    final exercise =
        exerciseList.firstWhere((exercise) => exercise.id == exerciseId);

    exercise.completed == true;

    //remove from the exercise list
    removeExercise(exercise);

    totalExerciseCompleted++;
  }

  // method to mark an equipment as handed over
  void markAsHandovered(int equipmentId) {
    final equipment =
        equipmentList.firstWhere((equipment) => equipment.id == equipmentId);
    equipment.handOvered == true;

    totalEquipmentsHandovered++;
  }

  // method to calculate the total number of calories burned by the user
  double calculateTotalCaloriessBurned() {
    double totalCaloriesBurned = 0;

    for (var equipment in equipmentList) {
      totalCaloriesBurned += equipment.noOfCalories;
    }

    //convert the totalCaloriesBurned into a value between 0 and 1
    if (totalCaloriesBurned > 0 && totalCaloriesBurned <= 10) {
      totalCaloriesBurned = totalCaloriesBurned / 10;
    }
    if (totalCaloriesBurned > 10 && totalCaloriesBurned <= 100) {
      totalCaloriesBurned = totalCaloriesBurned / 100;
    }
    if (totalCaloriesBurned > 100 && totalCaloriesBurned <= 1000) {
      totalCaloriesBurned = totalCaloriesBurned / 100;
    }

    return totalCaloriesBurned;
  }
}
