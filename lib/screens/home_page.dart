import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/destination_controller.dart';
import 'destiantion/category_button.dart';
import 'destiantion/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DestinationController destinationController = Get.find();
    print(destinationController.destinations?.length);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purple],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'Hi Guy!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Where are you going next?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search your destination',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryButton(
                              icon: Icons.hotel,
                              label: 'Hotels',
                              color: Colors.red,
                              backgroundColor: Colors.red[50],
                              onTap: () {}),
                          CategoryButton(
                              icon: Icons.flight,
                              label: 'Flights',
                              color: Colors.blue,
                              backgroundColor: Colors.blue[50],
                              onTap: () {}),
                          CategoryButton(
                              icon: Icons.category,
                              label: 'All',
                              color: Colors.green,
                              backgroundColor: Colors.green[50],
                              onTap: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              'Popular Destinations',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: destinationController.destinations!
                  .map((e) => DestinationCard(
                        imageUrl: e.image!,
                        location: e.title!,
                        rating: e.rate!,
                        favorite: e.favorite!,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
