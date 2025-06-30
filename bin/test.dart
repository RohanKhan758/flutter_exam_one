void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  // Create an empty map to store name and average
  Map<String, double> averages = {};

  // Loop through each student
  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores'] as List);

    // Calculate the sum
    int total = 0;
    for (var score in scores) {
      total += score;
    }

    // Calculate the average
    double average = total / scores.length;

    // Round to 2 decimal places
    double roundedAverage = double.parse(average.toStringAsFixed(2));

    // Add to map
    averages[name] = roundedAverage;
  }

  // Sort the map by values (average score) in descending order
  List<MapEntry<String, double>> sortedList = averages.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));

  // Create a new sorted map
  Map<String, double> sortedAverages = {};
  for (var entry in sortedList) {
    sortedAverages[entry.key] = entry.value;
  }

  // Print the result in required format
  print('{');
  for (var entry in sortedAverages.entries) {
    print('  "${entry.key}": ${entry.value},');
  }
  print('}');
}
