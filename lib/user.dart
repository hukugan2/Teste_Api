import 'package:flutter/cupertino.dart';

class User {
  int id;
  String name;
  String email;

  user(int id, String name, String email) {
    this.id = id;
    this.email = email;
  }

  User.fromjson(Map json)
      : id = json['id'],
        name = json['name'],
        email = json['email'];

  Map toJson() {
    return {'id': id, 'name': name, 'email': email};
  }
}
