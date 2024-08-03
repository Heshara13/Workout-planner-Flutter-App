import 'package:fifth_app_workout_planner/Models/equipment_model.dart';

class EquipmentData {
  final List<Equipment> equipmentList = [
    Equipment(
      id: 0, 
      name: "Dumbbells", 
      equipmentDescription: "A pair of dumbbells for strength traning exercises", 
      equipmentImageUrl: "assets/images/equipments/dumbbell.png", 
      noOfMinuites: 5, 
      noOfCalories: 2, 
      handOvered: false
      ),
      Equipment(
      id: 1,
      name: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/images/equipments/checklist.png",
      noOfMinuites: 20,
      handOvered: false,
      noOfCalories: 15,
    ),
    Equipment(
      id: 2,
      name: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 60,
      handOvered: false,
      noOfCalories: 30,
    ),
    Equipment(
      id: 3,
      name: "Jump Rope",
      equipmentDescription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinuites: 15,
      handOvered: false,
      noOfCalories: 12,
    ),
    Equipment(
      id: 4,
      name: "Kettlebells",
      equipmentDescription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinuites: 45,
      handOvered: false,
      noOfCalories: 25,
    ),
    Equipment(
      id: 5,
      name: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImageUrl: "assets/images/equipments/stationary-bike.png",
      noOfMinuites: 25,
      handOvered: false,
      noOfCalories: 15,
    ),
    Equipment(
      id: 6,
      name: "Pull-up Bar",
      equipmentDescription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImageUrl: "assets/images/equipments/treadmill.png",
      noOfMinuites: 40,
      handOvered: false,
      noOfCalories: 20,
    ),
    Equipment(
      id: 7,
      name: "Medicine Ball",
      equipmentDescription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinuites: 35,
      handOvered: false,
      noOfCalories: 18,
    ),
    Equipment(
      id: 8,
      name: "Bench",
      equipmentDescription:
          "A stable surface for various strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinuites: 55,
      handOvered: false,
      noOfCalories: 28,
    ),
    Equipment(
      id: 9,
      name: "Barbell",
      equipmentDescription:
          "A long metal bar with weights attached to each end, used for resistance training.",
      equipmentImageUrl: "assets/images/equipments/skipping-rope.png",
      noOfMinuites: 50,
      handOvered: false,
      noOfCalories: 27,
    ),
  ];
}
