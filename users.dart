import 'dart:convert';

List<Users> usersFromJson(String str) {
  final jsonData = json.decode(str);
  final List<dynamic> usersJson = jsonData['users'];
  return List<Users>.from(usersJson.map((x) => Users.fromJson(x)));
}

String usersToJson(List<Users> data) =>
    json.encode({'users': List<dynamic>.from(data.map((x) => x.toJson()))});

class Users {
  int? id;
  String? fullname;
  String? email;
  String? password;
  String? gender;

  Users({
    this.id,
    this.fullname,
    this.email,
    this.password,
    this.gender,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        fullname: json["fullname"],
        email: json["email"],
        password: json["password"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "email": email,
        "password": password,
        "gender": gender,
      };
}
