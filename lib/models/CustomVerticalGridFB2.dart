import 'package:flutter/material.dart';
import 'package:pets/database/kucing.dart';

class CustomVerticalGridFB2 extends StatelessWidget {
  const CustomVerticalGridFB2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: AnimalDatabase.animalList.map((animal) {
          return CustomGridCard(
            text: animal.name,
            subtitle: animal.subtitle,
            imageUrl: animal.imageUrl,
            onPressed: () {},
          );
        }).toList(),
      ),
    );
  }
}

class CustomGridCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  CustomGridCard({
    required this.text,
    required this.subtitle,
    required this.imageUrl,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
            Image.network(imageUrl, height: 100, fit: BoxFit.cover),
            const SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pet Grid'),
        ),
        body: CustomVerticalGridFB2(),
      ),
    ),
  );
}
