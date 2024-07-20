main() {
  Student student_1 = Student();
  student_1.Id = 1;
  student_1.name = "Ali";
  student_1.lastname = "Salman";
  student_1.email = "ali@gmail.com";
  student_1.isActive = true;

  student_1.sayInfo();

  Student student_2 = Student();
  student_2.Id = 2;
  student_2.name = "Veli";
  student_2.lastname = "Kara";
  student_2.email = "veli@gmail.com";
  student_2.isActive = true;
  student_2.sayInfo();
}

class Student {
  int? Id;
  String? name;
  String? lastname;
  String? email;
  bool isActive = false;

  Student() {
    print("Constructer is called");
  }

  void sayInfo() {
    print(
        "Öğrenci id=> $Id  adı=> $name  soyadı=> $lastname mail adresi=>$email durumu=> ${isActive ? "öğrenim durumu bulunmaktadır" : "öğrenim durumu bulunmamaktadır."}");
  }
}
