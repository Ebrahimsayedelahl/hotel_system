import 'package:hotel_system/customer.dart';
import 'package:hotel_system/employee.dart';
import 'package:hotel_system/hotel.dart';
import 'package:hotel_system/room.dart';
import 'dart:io';
import 'package:hotel_system/employee.dart';

void main() {
  List<Hotel> hotels = [
    Hotel(
      hotelId: '1',
      hotelName: 'Marshal El-Gezira Hotel',
      hotelDescription:
      'All units are equipped with air conditioning, '
          'a flat-screen TV with satellite channels, a fridge, '
          'a kettle, a bidet, free toiletries and a wardrobe. '
          'At the hotel, every room is equipped with bed linen and towels.',
      hotelType: 'intermediate',
      hotelRating: 3.0,
      hotelAddress: 'Mansoura, Al-Mashaya Alsoflaia street',
      customers: [],
      rooms: [],
    ),
    Hotel(
      hotelId: '2',
      hotelName: 'Ramada Hotel',
      hotelDescription:
      'It contains many rooms of varying prices and shapes, '
          'there is a private gym for guests,'
          ' and there is a hall for holding parties.',
      hotelType: 'intermediate',
      hotelRating: 2.5,
      hotelAddress:
      'Mansoura, al-gomhoria street , behind Mansoura University Gate',
      customers: [],
      rooms: [],
    ),
    // Add more hotels here if needed
  ];
  List<Customer> customers = [Customer(
    id: '1',
    name: 'Ebahim Sayed',
    mobile: '123456789',
    email: 'ebrahim.sayed@example.com',
    address: 'el-galaa St, mansoura',
    username: 'ebrahimsayed',
    password: '159753',
  ),Customer(
  id: '2',
  name: 'Ahmed Ali',
  mobile: '1234567890',
  email: 'ahmed.ali@example.com',
  address: ' ahmed maher St, mansoura',
  username: 'ahmedali',
  password: '1597530',
  )];
  List<Employee> employee = [Employee(
    id: '1',
    name: 'Ebahim Ahmed',
    mobile: '123456789',
    email: 'ebrahim.ahmed@example.com',
    address: 'el-galaa St, mansoura',
    username: 'ebrahimahmed',
    password: '159753',
    position: 'Manger'
  ),Employee(
    id: '2',
    name: 'Ahmed hassan',
    mobile: '1234567890',
    email: 'ahmed.hassan@example.com',
    address: ' ahmed maher St, mansoura',
    username: 'ahmedhassan',
    password: '1597530',
    position: 'Receptionist'
  )];





  List<Room> roomsOfMarshal = [
    Room(id: '123',type: 'single',price: '50')

 , Room(id: '124',type: 'double',price: '65')

  ,Room(id: '125',type: 'trible',price: '80')];


  hotels[0].rooms.add(roomsOfMarshal[0]);

  List<Room> roomsOfRamada = [
    Room(id: '10',type: 'single',price: '40')

    , Room(id: '20',type: 'double',price: '55')

    ,Room(id: '30',type: 'trible',price: '70')];




  void displayHotels() {
    print('Available Hotels:');
    hotels.forEach((hotel) {
      print('${hotel.hotelId}: ${hotel.hotelName}');
      print('Address: ${hotel.hotelAddress}');
      print('Description: ${hotel.hotelDescription}');
      print('Rating: ${hotel.hotelRating}');
      print('Type: ${hotel.hotelType}');

    });
  }


  void displayMarshalRooms(Hotel hotel) {
    print('Available Rooms at ${hotel.hotelName}:');
    roomsOfMarshal.forEach((room) {
      print('${room.id}: ${room.type} - \$${room.price}');
    });
  }
  void displayRamadaRooms(Hotel hotel) {
    print('Available Rooms at ${hotel.hotelName}:');
    roomsOfRamada.forEach((room) {
      print('${room.id}: ${room.type} - \$${room.price}');
    });
  }
  Customer? currentCustomer;
  bool isCustomerFound = false;
  Employee? currentEmployee;
  bool isEmployeeFound = false;

  print('Welcome!');
  print('User Name:');
  String? userName = stdin.readLineSync();
  print('Password:');
  String? password = stdin.readLineSync();
  for (Customer customer in customers) {
    if (customer.userName == userName && customer.password == password) {
      currentCustomer = customer;
      isCustomerFound = true;

    }
  }
  if (isCustomerFound) {
    print('Welcome Our Customer!');
    print('To see our hotels, press 1');
    String? input = stdin.readLineSync();

    if (input == '1') {
      displayHotels();
      print('---------------------');
      print('Choose the hotel ID to view the rooms:');
      String? input = stdin.readLineSync();
      if (input == '1') {
        displayMarshalRooms(hotels[0]);
        print('To reserve a room, press 1:');
        String? input1 = stdin.readLineSync();
        if(input1=='1'){
          print('Enter the Room ID to book:');
          String? roomId = stdin.readLineSync();
          Room? selectedRoom;
          roomsOfMarshal.forEach((room) {
            if(selectedRoom==room.id){
              print(room.id);
            };
          });


        }
      }else if (input == '2') {
        displayMarshalRooms(hotels[1]);
        print('To reserve a room, press 1:');
        String? input1 = stdin.readLineSync();
        if(input1=='1'){
          print('Enter the Room ID to book:');
          String? roomId = stdin.readLineSync();
          Room? selectedRoom;
          roomsOfMarshal.forEach((room) {
            if(selectedRoom==room.id){
              print(room);
            };
          });


        }
      }

    }
  }else{
    for (Employee employee in employee) {
    if (employee.userName == userName && employee.password == password) {
      currentEmployee = employee;
      isEmployeeFound = true;
      print('Welcome Our ${employee.position}!');
    }
  }
  }
  if (isCustomerFound == false && isEmployeeFound == false  ){
    print('Invalid UserName or Password!');

  }

}