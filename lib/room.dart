class Room {
  late String _id;
  late String _type;
  late String _price;
  Room({
    required String id,
    required String type,
    required String price,
  })  : _id= id,
  _type=type,
  _price=price;


  String get id => _id;

  set id(String value) {
    _id = value;
  }


  String get type => _type;

  set type(String value) {
    _type = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }
}
