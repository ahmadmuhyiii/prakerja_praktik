import 'package:flutter/material.dart';
import 'package:prakerja_app_muhyi/detail_page.dart';
import 'package:prakerja_app_muhyi/widgets/home_beverages.dart';
import 'package:prakerja_app_muhyi/widgets/home_foods.dart';
import 'package:prakerja_app_muhyi/widgets/menu_list.dart';

import 'menu_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 108, 54, 9),
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 108, 54, 9),
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          unselectedLabelStyle: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Image.asset(
                  'assets/ic_home.png',
                  width: 20,
                  color: Colors.yellow,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/menu');
                },
                child: Image.asset(
                  'assets/ic_menu.png',
                  width: 20,
                  color: Colors.white,
                ),
              ),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/deskripsi');
                },
                child: Image.asset(
                  'assets/ic_love.png',
                  width: 20,
                  color: Colors.white,
                ),
              ),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/ic_profile.png',
                  width: 20,
                  color: Colors.white,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 166, 115, 73),
        child: Image.asset(
          'assets/ic_cart.png',
          color: Colors.white,
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildIklan(context),
          buildMinuman(context),
          buildMakanan(context),
          buildMenu(context),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

Widget buildProfile(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Good Morning,',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Ahmad Muhyi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Center(
                child: Icon(
                  Icons.mail_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildIklan(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 180,
    margin: const EdgeInsets.only(
      top: 20,
    ),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/double.jpg',
        ),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(80, 40),
            backgroundColor: const Color.fromARGB(255, 108, 54, 9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'find out more',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildMinuman(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Beverages',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              HomeBeverages(
                iconUrl: 'assets/ic_signature.png',
                title: 'Signatured',
              ),
              SizedBox(width: 10),
              HomeBeverages(
                iconUrl: 'assets/ic_iced_cofe.png',
                title: 'Iced Coffee',
              ),
              SizedBox(width: 10),
              HomeBeverages(
                iconUrl: 'assets/ic_product_food.png',
                title: 'Hot Coffee',
              ),
              SizedBox(width: 10),
              HomeBeverages(
                iconUrl: 'assets/ic_cokolat.png',
                title: 'Chocolate',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildMakanan(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Foods',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              HomeFoods(
                iconUrl: 'assets/ic_cake.png',
                title: 'Signatured',
              ),
              SizedBox(width: 10),
              HomeFoods(
                iconUrl: 'assets/ic_bakery.png',
                title: 'Bakery',
              ),
              SizedBox(width: 10),
              HomeFoods(
                iconUrl: 'assets/ic_salad.png',
                title: 'Salad',
              ),
              SizedBox(width: 10),
              HomeFoods(
                iconUrl: 'assets/ic_yogurt.png',
                title: 'Yougurt',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildMenu(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
      left: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Menu',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [
            MenuList(
              onTap: () {
                Menu menu = Menu(
                  imageUrl: 'assets/capucinohot.jpg',
                  title: 'Capucino Hot',
                  harga: 'Rp.11000',
                  jenis: 'coffee',
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(menu: menu),
                  ),
                );
              },
              imageUrl: 'assets/capucinohot.jpg',
              title: 'Capucino Hot',
              harga: 'Rp.12000',
              jenis: 'coffee',
            ),
            MenuList(
              imageUrl: 'assets/americano.jpg',
              title: 'Americano',
              harga: 'Rp.21000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
            MenuList(
              imageUrl: 'assets/capucino.jpg',
              title: 'Capucino',
              harga: 'Rp.23000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
            MenuList(
              imageUrl: 'assets/gula aren.jpg',
              title: 'Gula Aren',
              harga: 'Rp.25000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
            MenuList(
              imageUrl: 'assets/americano.jpg',
              title: 'Americano',
              harga: 'Rp.21000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
            MenuList(
              imageUrl: 'assets/capucino.jpg',
              title: 'Capucino',
              harga: 'Rp.23000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
            MenuList(
              imageUrl: 'assets/capucinohot.jpg',
              title: 'Capucino Hot',
              harga: 'Rp.18000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
            MenuList(
              imageUrl: 'assets/gula aren.jpg',
              title: 'Gula Aren',
              harga: 'Rp.25000',
              jenis: 'coffee',
              onTap: () {
                Navigator.pushNamed(context, '/deskripsi');
              },
            ),
          ],
        ),
      ],
    ),
  );
}
