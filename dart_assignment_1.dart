import 'dart:io';

void main() {
  var students = [];
  while (true) {
    print('Enter student name: ');
    var name = stdin.readLineSync();
    print('Enter student score: ');
    String? scoreStr = stdin.readLineSync();
    var score;
    if (scoreStr != null) {
      score = int.parse(scoreStr);
    }
    if (name == 'exit' || score == -1) {
      break;
    }

    var grade = '';
    if (score <= 100 || score >= 90) {
      grade = 'A';
    } else if (score >= 80 || score > 90) {
      grade = 'B';
    } else if (score >= 70 || score > 80) {
      grade = 'C';
    } else if (score >= 60 || score > 70) {
      grade = 'D';
    } else if (score >= 0 || score < 60) {
      grade = 'F';
    } else {
      grade = 'Invalid';
    }
    students.add({"name": name, "score": score, "grade": grade});
    print('$name\'s grade: $grade');
  }
}