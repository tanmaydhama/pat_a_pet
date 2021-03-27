import 'petData.dart';

var name = ['ASHLEY', 'BELLA', 'BLOSSOM', 'UHTRED'];
var url = [
  'images/ashley.jpg',
  'images/bella.jpg',
  'images/blossom.jpg',
  'images/uhtred.jpg'
];
PetData ashley = PetData(
    name: 'Ashley',
    age: 'Adult',
    breed: 'German shepherd mix',
    sex: 'Female',
    status: 'Available');
PetData bella = PetData(
    name: 'Bella',
    age: 'Adult',
    breed: 'Terrier',
    sex: 'Female',
    status: 'Available');
PetData blossom = PetData(
    name: 'Blossom',
    age: 'Adult',
    breed: 'Australian Cattle Dog',
    sex: 'Female',
    status: 'Available');
PetData uhtred = PetData(
    name: 'Uhtred',
    age: 'Adult',
    breed: 'Doberman Pinscher',
    sex: 'Male',
    status: 'Available');
List<PetData> pet = [ashley, bella, blossom, uhtred];
