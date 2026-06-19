import 'package:flutter/material.dart';
import 'package:sneakertell/components/bottom_nav_bar.dart';
import 'package:sneakertell/pages/cart_page.dart';
import 'package:sneakertell/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0,

        centerTitle: true,

        title: const Text(
          "SneakerTell",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),

              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),

            bottomRight: Radius.circular(35),
          ),
        ),

        child: Column(
          children: [
            // HEADER
            Container(
              height: 230,

              width: double.infinity,

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Color(0xff333333)],

                  begin: Alignment.topLeft,

                  end: Alignment.bottomRight,
                ),

                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: 110,

                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,

                      shape: BoxShape.circle,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.3),

                          blurRadius: 15,
                        ),
                      ],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(15),

                      child: Image.asset(
                        'lib/images/logo.png',

                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "SneakerTell",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 24,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                    "Premium Sneakers",

                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // MENU ITEMS
            drawerItem(
              icon: Icons.home_outlined,

              title: "Home",

              selected: true,
            ),

            drawerItem(icon: Icons.shopping_bag_outlined, title: "Shop"),

            drawerItem(icon: Icons.favorite_border, title: "Wishlist"),

            drawerItem(icon: Icons.info_outline, title: "About"),

            const Spacer(),

            // LOGOUT
            Padding(
              padding: const EdgeInsets.only(bottom: 25),

              child: drawerItem(icon: Icons.logout, title: "Logout"),
            ),
          ],
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(onTabChange: navigateBottomBar),

      body: _pages[_selectedIndex],
    );
  }

  Widget drawerItem({
    required IconData icon,

    required String title,

    bool selected = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),

      decoration: BoxDecoration(
        color: selected ? Colors.white.withOpacity(.15) : Colors.transparent,

        borderRadius: BorderRadius.circular(15),
      ),

      child: ListTile(
        leading: Icon(icon, color: selected ? Colors.white : Colors.grey[400]),

        title: Text(
          title,

          style: TextStyle(
            color: selected ? Colors.white : Colors.grey[400],

            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),

        onTap: () {},
      ),
    );
  }
}
