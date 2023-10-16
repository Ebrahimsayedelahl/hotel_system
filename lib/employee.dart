import 'package:hotel_system/person.dart';

class Employee extends Person {
  String _position;


  String get position => _position;

  set position(String value) {
    _position = value;
  }

  Employee({
    required String id,
    required String name,
    required String mobile,
    required String email,
    required String address,
    required String username,
    required String password,
    required String position,
  })  : _position = position,
        super(
          id: id,
          name: name,
          mobile: mobile,
          email: email,
          address: address,
          userName: username,
          password: password
      );
}
