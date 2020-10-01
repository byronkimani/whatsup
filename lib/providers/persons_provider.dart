import 'package:flutter/cupertino.dart';
import 'package:whatsup/models/person.dart';

class Persons with ChangeNotifier {
  final List<Person> _persons = [
    Person(
      name: 'Byron',
      imageUrl: null,
      phoneNumber: '001',
    ),
    Person(
      name: 'Lou',
      imageUrl: null,
      phoneNumber: '002',
    ),
    Person(
      name: 'Kevin',
      imageUrl: null,
      phoneNumber: '003',
    ),
    Person(
      name: 'Mike',
      imageUrl: null,
      phoneNumber: '004',
    ),
    Person(
      name: 'Mitchelle',
      imageUrl: null,
      phoneNumber: '005',
    ),
    Person(
      name: 'Dante',
      imageUrl: null,
      phoneNumber: '006',
    ),
    Person(
      name: 'Jane',
      imageUrl: null,
      phoneNumber: '007',
    ),
    Person(
      name: 'Ali',
      imageUrl: null,
      phoneNumber: '008',
    ),
  ];

  List<Person> get person {
    return [..._persons];
  }

  void addPerson() {
    //_chats.add(value);
    notifyListeners();
  }
}
