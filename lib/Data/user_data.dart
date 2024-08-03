import 'package:fifth_app_workout_planner/Models/equipment_model.dart';
import 'package:fifth_app_workout_planner/Models/exercise_model.dart';
import 'package:fifth_app_workout_planner/Models/user_model.dart';

User user = User(
    userId: "123456",
    fullName: "John Doe",
    address: "123 Main St, City, Country",
    gender: "Male",
    age: 30,
    description: "Fitness enthusiast",
    totalExerciseCompleted: 0,
    totalEquipmentsHandovered: 0,
    exerciseList: [
      Exercise(
        exerciseName: "Push-ups",
        exerciseImageUrl: "assets/images/exercises/cobra.png",
        noOfMinuites: 15,
        id: 0,
        completed: false,
      ),
      Exercise(
        exerciseName: "Squats",
        exerciseImageUrl: "assets/images/exercises/downward-facing.png",
        noOfMinuites: 20,
        id: 1,
        completed: false,
      )
    ],
    equipmentList: [
      Equipment(
         id: 1,
        name: "Resistance Bands",
        equipmentDescription: "Elastic bands used for resistance exercises.",
        equipmentImageUrl: "assets/images/equipments/checklist.png",
        noOfMinuites: 20,
        handOvered: false,
        noOfCalories: 150,
      ),
      Equipment(
        id: 2,
        name: "Yoga Mat",
        equipmentDescription: "A mat for practicing yoga and floor exercises.",
        equipmentImageUrl: "assets/images/equipments/dumbbell.png",
        noOfMinuites: 60,
        handOvered: false,
        noOfCalories: 300,
      )

    ],
    favExerciseList: [
      Exercise(
        exerciseName: "Plank",
        exerciseImageUrl: "assets/images/equipments/dumbbell.png",
        noOfMinuites: 30,
        id: 2,
        completed: false,
      )
    ],
    favEquipmentList: [
      Equipment(
        id: 3,
        name: "Dumbbells",
        equipmentDescription: "Weights used for strength training.",
        equipmentImageUrl: "assets/images/equipments/dumbbell.png",
        noOfMinuites: 30,
        handOvered: false,
        noOfCalories: 200,
      )
    ]);
