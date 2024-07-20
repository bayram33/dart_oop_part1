void main() {
  CalculateArea answer_1 = CalculateArea(2);
  answer_1.ResultArea();
  answer_1.ResultCircumference();
}

class CalculateArea {
  int? radius;
  double _pi = 3.14;

  CalculateArea(int rad) {
    _checkValueOfRadius = rad;
  }

  void set _checkValueOfRadius(int number) {
    if (number <= 0) {
      this.radius = 1;
    } else {
      this.radius = number;
    }
  }

  void ResultArea() {
    print("Area of circle is ${_pi * radius! * radius!}");
  }

  void ResultCircumference() {
    print("Circumference of circle is ${2 * _pi * radius!}");
  }
}
