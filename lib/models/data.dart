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
      animalImage: "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg?w=740&t=st=1706923279~exp=1706923879~hmac=9dd08a3971ca18900e97915e19d00d7e21d4e5f1ec7b503ce3d7dba9c6fd6ba7"
  ),
  Animal(
      animalName: "Elephant",
      animalType: "Mammal",
      animalInfo: "The elephant is the largest land animal on Earth, known for its long trunk, large ears, and tusks. Found in various habitats across Africa and Asia, elephants are highly intelligent and social animals. They play a crucial role in their ecosystems as seed dispersers and ecosystem engineers.",
      animalImage: "https://img.freepik.com/free-photo/elephant-walking-road_181624-23124.jpg?w=740&t=st=1706923524~exp=1706924124~hmac=0f7cfba159500488c97b637f3bffe51491e2f636d14f7c9c8222a62194e2aa42"
  ),
  Animal(
      animalName: "Tiger",
      animalType: "Mammal",
      animalInfo: "The tiger is the largest cat species, known for its distinctive orange coat with black stripes. Found primarily in the forests of Asia, tigers are solitary hunters that prey on a variety of animals including deer, wild pigs, and water buffalo. They are endangered due to habitat loss and poaching.",
      animalImage: "https://as2.ftcdn.net/v2/jpg/03/32/46/23/1000_F_332462369_64Y5qJ7tLTS95Ycak2t8aWwEC6Hvleph.jpg"
  ),
];
