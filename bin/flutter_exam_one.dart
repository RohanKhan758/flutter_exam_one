void main() {
  var students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  var averages = {
    for (var s in students)
      s['name']: () {
        var scores = List<int>.from(s['scores'] as List);
        var avg = scores.reduce((a, b) => a + b) / scores.length;
        return double.parse(avg.toStringAsFixed(2));
      }()
  };

  var sorted = Map.fromEntries(
    averages.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value)),
  );


 
  for (var entry in sorted.entries) {
    print('  "${entry.key}": ${entry.value},');
  }

}
