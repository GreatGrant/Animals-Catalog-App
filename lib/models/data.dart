class Animal {
  String? animalName;
  String? animalType;
  String? animalImage;
  String? animalInfo;

  Animal({this.animalName, this.animalType, this.animalImage, this.animalInfo});
}

List<Animal> mammalList = [
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

List<Animal> birdsList = [
  Animal(
      animalName: "Bald Eagle",
      animalType: "Bird",
      animalInfo: "The bald eagle is a bird of prey found in North America. It is the national bird and symbol of the United States of America. Bald eagles are known for their striking white head and tail, and powerful hooked beak.",
      animalImage: "https://img.freepik.com/free-photo/closeup-shot-bald-eagle-tree-branch-looking-its-prey_181624-29341.jpg?w=740&t=st=1707083824~exp=1707084424~hmac=e9cee16bb7764429ac977f18083e4b810c7192b9b592f46b638c54ebe6e76f62"
  ),
  Animal(
      animalName: "Peregrine Falcon",
      animalType: "Bird",
      animalInfo: "The peregrine falcon is a widespread bird of prey known for its speed and agility. It is one of the fastest animals in the world, capable of reaching speeds over 240 miles per hour when diving. Peregrine falcons are found on every continent except Antarctica.",
      animalImage: "https://www.allaboutbirds.org/guide/assets/photo/303618951-1280px.jpg"
  ),
  Animal(
      animalName: "Great Horned Owl",
      animalType: "Bird",
      animalInfo: "The great horned owl is a large owl species found throughout the Americas. It is known for its distinctive ear tufts, large yellow eyes, and deep hooting call. Great horned owls are nocturnal hunters, preying on a variety of small mammals and birds.",
      animalImage: "https://www.birdnote.org/sites/default/files/Great-Horned-Owl-Tucson-800-Mick-Thompson-CC.jpg"
  ),
];

List<Animal> reptilesList = [
  Animal(
      animalName: "Komodo Dragon",
      animalType: "Reptile",
      animalInfo: "The Komodo dragon is a large species of lizard found in the Indonesian islands of Komodo, Rinca, Flores, and Gili Motang. It is the largest living lizard species, known for its massive size, powerful jaws, and venomous bite.",
      animalImage: "https://img.freepik.com/free-photo/beautiful-shot-iguana-sitting-stone_181624-32061.jpg?t=st=1707084633~exp=1707085233~hmac=54a0e943ceeb044436c33eb0e254993d67247ec09b202952a72571083e4d4f49"
  ),
  Animal(
      animalName: "Snake",
      animalType: "Reptile",
      animalInfo: "Snakes are elongated, legless reptiles that are found in various habitats around the world. They are carnivorous predators, feeding on a wide range of prey including rodents, birds, and other reptiles. Some species of snakes are venomous, while others are non-venomous.",
      animalImage: "https://img.freepik.com/free-photo/boiga-snake-dendrophila-yellow-ringed-stalking-prey-head-boiga-dendrophila-animal-closeup_488145-3560.jpg?t=st=1707084720~exp=1707085320~hmac=3238d279e791e58e88e7378548e6c27ef83b84b403b7131516acf72630ffefa8"
  ),
  Animal(
      animalName: "Green Anaconda",
      animalType: "Reptile",
      animalInfo: "The green anaconda is one of the largest snake species in the world, native to South America. It is a non-venomous constrictor known for its immense size and strength. Green anacondas are excellent swimmers and primarily inhabit aquatic environments such as swamps, marshes, and slow-moving rivers.",
      animalImage: "https://img.freepik.com/free-photo/copperheaded-trinket-snake-ready-attack_488145-1395.jpg?t=st=1707084770~exp=1707085370~hmac=d87b02d32dee2529cc9a0ce79a9835ed04badbf0d944084982f6c66b35486ac7"
  ),
];

List<Animal> aquaticList = [
  Animal(
      animalName: "Dolphin",
      animalType: "Aquatic",
      animalInfo: "Dolphins are highly intelligent marine mammals known for their playful behavior and social nature. They are found in oceans and seas around the world and are well-adapted to aquatic life. Dolphins communicate using a variety of sounds and clicks and feed on fish and squid.",
      animalImage: "https://img.freepik.com/free-photo/playful-bottle-nosed-dolphin-jumping-tropical-waters-generated-by-ai_188544-29599.jpg?t=st=1707085155~exp=1707088755~hmac=b4d1874b0c71df5a370bc769c31f7cb05ed59457dc575509f60a596cc8f9752c&w=826"
  ),
  Animal(
      animalName: "Great White Shark",
      animalType: "Aquatic",
      animalInfo: "The great white shark is a large predatory fish found in oceans around the world. It is one of the most feared and well-known shark species, known for its powerful jaws and serrated teeth. Great white sharks are apex predators, feeding on a variety of marine animals including seals, sea lions, and other sharks.",
      animalImage: "https://img.freepik.com/free-photo/shark-sea_181624-17254.jpg?w=740&t=st=1707085096~exp=1707085696~hmac=6ea45a530a94a3e2f221e2c5c14da7b5d3dd62914c5331425a4b5d8e35cfc728"
  ),
  Animal(
      animalName: "Sea Turtle",
      animalType: "Aquatic",
      animalInfo: "Sea turtles are marine reptiles found in oceans and seas worldwide. They are characterized by their bony shells and streamlined bodies, which help them navigate through the water. Sea turtles are long-lived animals that undertake long migrations between their nesting and feeding grounds.",
      animalImage: "https://img.freepik.com/free-photo/closeup-shot-beautiful-turtle-swimming-sea_181624-21868.jpg?w=740&t=st=1707085573~exp=1707086173~hmac=36cb884168c4a0a9710bc1fa6154244a826d6cb977068a9639dc47a4bd76b6c6"
  ),
];
