import 'package:flutter/material.dart';

import 'menu_model.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;

  const DetailPage({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          //batas
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  width: 180,
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          menu.imageUrl,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      menu.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 108, 54, 9),
                      ),
                    ),
                    Text(
                      menu.harga,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 108, 54, 9),
                      ),
                    ),
                    Text(
                      menu.jenis,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 108, 54, 9),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Our Capucino is a drink consisting of a mixture of coffee and milk. The milk used for our milk coffee is fresh milk, While the coffee used is the original coffee of choice.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 108, 54, 9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // batas
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
