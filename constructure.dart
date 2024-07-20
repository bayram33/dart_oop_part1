void main() {
  Car car_1 = Car(20, 15000, "Tofaş", true);
  car_1.bringInfo();

  Car car_2 = Car.short(age: 32, km: 25000, name: "Possat", damage: false);
  car_2.bringInfo();
}

class Car {
  Car(int age, int km, String name, bool damage) {
    this.age = age;
    this.km = km;
    this.name = name;
    this.damage = damage;
  }

  Car.short({this.age, this.name, this.km, this.damage});

  int? age;
  int? km;
  String? name;
  bool? damage;

  void bringInfo() {
    print(
        "Aracımızın bilgileri şöyledir ===>  Yaşı: $age  Kilometresi: $km   Markası: $name  Hasarı: ${damage! ? "hasar kaydı var" : "hasar kaydı bulunmamaktadır."}  ");
  }
}
