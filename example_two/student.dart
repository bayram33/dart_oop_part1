import "dart:math";
import 'student_class.dart';

void main() {
  List<Student> allStudent = List.filled(2, Student());
  fillStudent(allStudent);
  print(allStudent);
  double result = calcAverage(allStudent);
  print(result);
}

void fillStudent(List<Student> list) {
  for (int i = 0; i < list.length; i++) {
    list[i] = Student(id: i + 1, grade: Random().nextInt(100));
  }
}

double calcAverage(List<Student> list) {
  int toplam = 0;
  for (Student stdnt in list) {
    toplam += stdnt.grade!;
  }
  print("Ortalamnız  ${toplam / list.length}");
  return toplam / list.length;
}
