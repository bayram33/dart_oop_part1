main() {
  print("*************************************");
  print("Welcome to Suzy's PetShop");

  print("|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||");
  Animal pet_1 = Animal(name: "Pufy", age: 5, color: "orange", isMale: true);
  pet_1.bringInfo();

  print("|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||");
  Animal pet_2 = Animal.otherConstructure("Karabaş", 2, "Black", true);
  pet_2.bringInfo();

  print("|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||");
  Animal pet_3 = Animal.otherConstructure("Lily", 8, "White", false);
  pet_3.bringInfo();
}

class Animal {
  String? name;
  int? age;
  String? color;
  bool? isMale;

  Animal({this.name, this.age, this.color, this.isMale});

  factory Animal.otherConstructure(
      String name, int age, String color, bool isMale) {
    if (age <= 5) {
      return Animal(age: 0, name: name, color: color, isMale: isMale);
    } else {
      return Animal(age: age, name: name, color: color, isMale: isMale);
    }
  }

  void bringInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Color: $color");
    print("Is Male: ${isMale! ? "Male" : "Female"}");
  }
}
