class Data {
  int? id;
  String? _email;
  String? _password;

  Data(int id, String email, String password) {
    checkId = id;
    this._email = email;
    this._password = password;
  }

  void set checkId(int numberofid) {
    if (numberofid <= 0) {
      this.id = 1;
      print("Malesef girdiğiniz değer geçersiz $numberofid");
    } else {
      this.id = numberofid;
      print("Girdiğiniz değer geçerli $numberofid");
    }
  }

  String get sayInfo {
    return "İnfos  \n mail=> $_email \n id=>  $id ";
  }

  void bringInfo() {
    print(" id: $id \n email: $_email \n password: $_password");
  }
}
