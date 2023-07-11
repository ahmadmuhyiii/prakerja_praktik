import 'package:flutter/material.dart';
import 'package:prakerja_app_muhyi/deskripsi_page.dart';
import 'package:prakerja_app_muhyi/detail_page.dart';
import 'package:prakerja_app_muhyi/menu_model.dart';
import 'package:prakerja_app_muhyi/menu_page.dart';
import 'package:prakerja_app_muhyi/splash_page.dart';
import 'myhome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prakerja Unjuk Keterampilan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashPage(),
        '/home': (_) => const MyHomePage(),
        '/menu': (_) => const MenuPage(),
        '/deskripsi': (context) => const DeskripsiPage(),
        '/detail': (context) => DetailPage(
              menu: Menu(
                imageUrl: 'assets/capucinohot.jpg',
                title: 'Capucino Hot',
                harga: 'Rp. 13000',
                jenis: 'coffee',
              ),
            ),
      },
    );
  }
}
