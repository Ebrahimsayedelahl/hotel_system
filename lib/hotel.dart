import 'package:hotel_system/customer.dart';
import 'package:hotel_system/room.dart';

class Hotel {
  String _hotelId;
  String _hotelName;
  String _hotelDescription;
  String _hotelType;
  double _hotelRating;
  String _hotelAddress;
  List<Customer> _customers;
  List<Room> _rooms;

  String get hotelId => _hotelId;
  String get hotelName => _hotelName;
  String get hotelDescription => _hotelDescription;
  String get hotelType => _hotelType;
  double get hotelRating => _hotelRating;
  String get hotelAddress => _hotelAddress;
  List<Customer> get customers => _customers;
  List<Room> get rooms => _rooms;

  Hotel({
    required String hotelId,
    required String hotelName,
    required String hotelDescription,
    required String hotelType,
    required double hotelRating,
    required String hotelAddress,
    required List<Customer> customers,
    required List<Room> rooms,
  })  : _hotelId = hotelId,
        _hotelName = hotelName,
        _hotelDescription = hotelDescription,
        _hotelType = hotelType,
        _hotelRating = hotelRating,
        _hotelAddress = hotelAddress,
        _customers = customers,
        _rooms = rooms;

  void addCustomer(Customer customer) {
    _customers.add(customer);
  }

  void addRoom(Room room) {
    _rooms.add(room);
  }

  void deleteRoom(Room room) {}
}
