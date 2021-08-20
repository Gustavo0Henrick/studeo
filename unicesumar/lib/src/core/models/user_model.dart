import 'dart:convert';

class UserModel {
  final String? name;
  final String? email;
  final String? ra;
  final String? compromissos;

  UserModel(
    this.name,
    this.email,
    this.ra,
    this.compromissos,
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'ra': ra,
      'compromissos': compromissos,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['name'],
      map['email'],
      map['ra'],
      map['compromissos'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
