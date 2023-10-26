import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/models/http.dart';

class FirstScreen extends GetView<FirstScreen> {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/cat.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: RichText(
                  text: const TextSpan(
                    text: "Find your\ncutest animal\nhere",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFF403A3A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(35, -10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF403A3A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                onPressed: () {
                  Get.to(const TodosPage());
                },
                child: const Text(
                  "Explore  -->",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "comic sans MS",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: const Alignment(0.0, 0.7),
                child: Container(
                  width: 350,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    color: const Color(0xFFE8E5E5),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF878383),
                        spreadRadius: 15,
                        blurRadius: 40,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Let's Adopt now!\nThere are many types of pets that\nare healthy, cute, and clean",
                        style: TextStyle(
                          color: Color(0xFF403A3A),
                          fontFamily: "comic sans MS",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF403A3A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 80,
                            vertical: 20,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed('/secondscreen');
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "comic sans MS",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
