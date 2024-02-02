class Animal {
  String? animalName;
  String? animalType;
  String? animalImage;
  String? animalInfo;

  Animal({this.animalName, this.animalType, this.animalImage, this.animalInfo});
}

List<Animal> animalList = [
  Animal(
      animalName: "Lion",
      animalType: "Mammal",
      animalInfo: "The lion is one of the largest predators in the cat family, known for its majestic mane and powerful roar. Found primarily in the savannas of Africa, lions are social animals that live in groups called prides. They are apex predators, hunting a variety of prey including antelopes, zebras, and buffalo.",
      animalImage: "https://img.freepik.com/free-photo/lion-walking-savannah-kruger-national-park-south-africa_155003-23105.jpg?size=626&ext=jpg"
  ),
  Animal(
      animalName: "Elephant",
      animalType: "Mammal",
      animalInfo: "The elephant is the largest land animal on Earth, known for its long trunk, large ears, and tusks. Found in various habitats across Africa and Asia, elephants are highly intelligent and social animals. They play a crucial role in their ecosystems as seed dispersers and ecosystem engineers.",
      animalImage: "https://img.freepik.com/free-photo/asian-elephants-baby_91161-1016.jpg?size=626&ext=jpg"
  ),
  Animal(
      animalName: "Tiger",
      animalType: "Mammal",
      animalInfo: "The tiger is the largest cat species, known for its distinctive orange coat with black stripes. Found primarily in the forests of Asia, tigers are solitary hunters that prey on a variety of animals including deer, wild pigs, and water buffalo. They are endangered due to habitat loss and poaching.",
      animalImage: "https://img.freepik.com/free-photo/siberian-tiger-near-waterpool_1258-1075.jpg?size=626&ext=jpg"
  ),
];
