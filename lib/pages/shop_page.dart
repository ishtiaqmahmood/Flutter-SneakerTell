import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Padding(
              padding: EdgeInsets.all(20),

              child: Text(
                "Explore Sneakers",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Container(
                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),

                    SizedBox(width: 10),

                    Text(
                      "Search sneakers...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),

                itemCount: 6,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                  childAspectRatio: .7,

                  crossAxisSpacing: 15,

                  mainAxisSpacing: 15,
                ),

                itemBuilder: (context, index) {
                  return sneakerCard(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sneakerCard(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),

              child: Image.asset("lib/images/shoe.jpg", fit: BoxFit.contain),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),

            child: Text(
              "Nike Air Max",

              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(15),

            child: Text(
              "\$120",

              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
