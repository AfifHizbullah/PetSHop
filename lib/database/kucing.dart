
class AnimalDatabase {
  static List<AnimalInfo> animalList = [
    AnimalInfo(
      name: "Kucing Maluku",
      imageUrl: "https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_640.jpg",
      subtitle: "news",
    ),
    AnimalInfo(
      name: "Anjing Buldog",
      imageUrl: "https://cdn.pixabay.com/photo/2018/03/31/06/31/dog-3277416_640.jpg",
      subtitle: "news",
    ),
    // Tambahkan data hewan lainnya sesuai kebutuhan
  ];
}

class AnimalInfo {
  final String name;
  final String imageUrl;
  final String subtitle;

  AnimalInfo({
    required this.name,
    required this.imageUrl,
    required this.subtitle,
  });
}