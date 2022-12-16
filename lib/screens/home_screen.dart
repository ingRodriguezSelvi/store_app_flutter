import 'package:flutter/material.dart';
import 'package:pets_r_wise_store/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('PetsRwise',style: TextStyle(fontFamily: 'Hey-Comic'),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: const SideMenu(),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: const Image(image: AssetImage('assets/homeImage.png'), fit: BoxFit.cover),
                ),
                const SizedBox(height: 10),
                const ProductSlider(),
                const SizedBox(height: 10),
                const PromotionSliders(),
                const SizedBox(height: 10),
                const ServiceSliders(),
                const SizedBox(height: 10),
                const ProductSlider(),
                const SizedBox(height: 10),
              ],
            ),
          )
        ),
      bottomNavigationBar: const NavBar()
    );
  }
}
