import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                "My Cart",

                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),

                itemCount: 3,

                itemBuilder: (context, index) {
                  return cartItem();
                },
              ),
            ),

            Container(
              padding: const EdgeInsets.all(20),

              decoration: const BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),

              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text("Total", style: TextStyle(fontSize: 18)),

                      Text(
                        "\$360",

                        style: TextStyle(
                          fontSize: 22,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,

                    height: 55,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      onPressed: () {},

                      child: const Text(
                        "Checkout",

                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cartItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Container(
            height: 80,

            width: 80,

            padding: const EdgeInsets.all(10),

            child: Image.asset("lib/images/shoe.jpg", fit: BoxFit.contain),
          ),

          const SizedBox(width: 20),

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Nike Air Max",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),

              SizedBox(height: 5),

              Text("\$120", style: TextStyle(color: Colors.grey)),
            ],
          ),

          const Spacer(),

          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_outline)),
        ],
      ),
    );
  }
}
