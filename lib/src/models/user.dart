import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart' show DateFormat;

enum UserState { available, away, busy }

class User {
  String id = UniqueKey().toString();
  late String name;
  late String email;
  late String gender;
  late DateTime dateOfBirth;
  late String avatar;
  late String address;
  late UserState userState;

  User.init();

  User.basic(this.name, this.avatar, this.userState);

  User.advanced(this.name, this.email, this.gender, this.dateOfBirth,
      this.avatar, this.address, this.userState);

  User getCurrentUser() {
    return User.advanced(
        'Andrew R. Whitesides',
        'andrew@gmail.com',
        'Male',
        DateTime(1993, 12, 31),
        'img/user2.jpg',
        '4600 Isaacs Creek Road Golden, IL 62339',
        UserState.available);
  }

  getDateOfBirth() {
    return DateFormat('yyyy-MM-dd').format(this.dateOfBirth);
  }
}
