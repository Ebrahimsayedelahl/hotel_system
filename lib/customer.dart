import 'package:hotel_system/person.dart';

class Customer extends Person {


  Customer({
    required String id,
    required String name,
    required String mobile,
    required String email,
    required String address,
    required String username,
    required String password,
  })  :super(
        id: id,
        name: name,
        mobile: mobile,
        email: email,
        address: address,
        userName: username,
        password: password
      );
}
