import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/controllers/sc_controllers.dart';
import 'package:pets/models/BottomNavBarFb1.dart';
import 'package:pets/models/CustomCarouselFB2.dart';
import 'package:pets/models/Searchinput.dart';

class SecondScreen extends GetView<SecondScreenController> {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                FeatherIcons.alignLeft,
                color: Color.fromARGB(255, 2, 2, 2),
                size: 30,
              ),
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              tooltip: "Open Drawer",
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            children: <Widget>[
              Image.asset(
                'images/afif.png',
                width: 35,
                height: 35,
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 0),
            const Text(
              "Good\nMorning,",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                height: 1.0,
                color: Color(0xFF403A3A),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Now you can choose the pet you like!",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF88888A),
              ),
            ),
            const SizedBox(height: 15),
            SearchInput(
              textController: TextEditingController(),
              hintText: "Search here...",
            ),
            const SizedBox(height: 10),
            const CustomCarouselFB2(),
            // const Text(
            //   "NEWS!",
            //   style: TextStyle(
            //     fontSize: 15.0,
            //     fontWeight: FontWeight.bold,
            //     color: Color(0xFF403A3A),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarFb1(),
    );
  }
}
