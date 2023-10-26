import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/controllers/sc_controllers.dart';


class CustomCarouselFB2 extends GetView<SecondScreenController> {
  const CustomCarouselFB2({Key? key}) : super(key: key);
  
  


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardFb1(
            text: "Kucing",
            imageUrl:
                "https://cdn.icon-icons.com/icons2/1362/PNG/512/artboard-10_89054.png",
            subtitle: "raedy stok",
            onPressed: () {},
          ),
          CardFb1(
            text: "Anjing",
            imageUrl:
                "https://cdn.icon-icons.com/icons2/1465/PNG/512/441dogface_100527.png",
            subtitle: "raedy stok",
            onPressed: () {
            },
          ),
          CardFb1(
            text: "Kelinci",
            imageUrl:
                "https://cdn.icon-icons.com/icons2/1446/PNG/512/22253rabbitface_98737.png",
            subtitle: "rady stok",
            onPressed: () {
            },
          ),
          CardFb1(
            text: "Burung",
            imageUrl:
                "https://cdn.icon-icons.com/icons2/1422/PNG/128/owl_98440.png",
            subtitle: "ready stok",
            onPressed: () {},
          ),
          CardFb1(
            text: "Ikan",
            imageUrl:
                "https://cdn.icon-icons.com/icons2/1417/PNG/256/fish_98387.png",
            subtitle: "ready stok",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CardFb1 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CardFb1(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(14),
        width: 100,
        height: 0,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 5),
              blurRadius: 10,
              spreadRadius: 0,
              color: const Color.fromARGB(255, 87, 85, 85).withOpacity(0.4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 35, fit: BoxFit.cover),
            const Spacer(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
