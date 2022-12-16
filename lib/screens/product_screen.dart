import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PetsRWise',style: TextStyle(fontFamily: 'Hey-Comic'),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        child: const Center(
          child: Text('Product Screen'),
        ),
      ),
        bottomNavigationBar: const NavBar()
    );
  }
}
