import 'package:flutter/material.dart';
import 'Makanan_Tradisional_detail.dart';
import 'Makanan_Tradisional.dart';
void main() {
  runApp(const MyApp());
}
      class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: '053_Diah Pitaloka Rachmawati',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Color.fromARGB(255, 255, 94, 201),
              elevation: 0,
              centerTitle: true,
              toolbarHeight: 80, 
            ),
          ),
          home: const HomeScreen(),
          );
        }
      }
        class HomeScreen extends StatelessWidget {
          const HomeScreen({Key? key}) : super(key: key);

          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(80), 
                child: AppBar(
                  title: const Text(
                    'Makanan Tradisional Jawa Timur',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            body: ListView.builder(
              itemCount: dataFood.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(

                    builder: (context) => DetailScreen(
                      foods: dataFood[index],
                    ),
                  ),
                );
              },
            child: Card(
              margin: const EdgeInsets.all(10),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    dataFood[index].image,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataFood[index].name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Kota Asal: ${dataFood[index].city}',
                            style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}