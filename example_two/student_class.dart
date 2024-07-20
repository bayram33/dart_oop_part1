class Student {
  int? id;
  int? grade;

  Student({this.id = 1, this.grade = 1});

  @override
  String toString() {
    return "  Id => $id  Grade => $grade ";
  }
}
