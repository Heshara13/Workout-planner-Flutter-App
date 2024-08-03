class Equipment {
  final int id;
  final String name;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalories;
  final bool handOvered;

  Equipment({
    required this.id, 
    required this.name, 
    required this.equipmentDescription, 
    required this.equipmentImageUrl, 
    required this.noOfMinuites, 
    required this.noOfCalories, 
    required this.handOvered
    });
}
