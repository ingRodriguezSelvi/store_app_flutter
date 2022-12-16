
import 'package:flutter/material.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Featured Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => const _ProductPoster(),
            ),
          )
        ]
      ),
    );
  }
}

class _ProductPoster extends StatelessWidget {
  const _ProductPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _cardBorders(),
      width: 130,
      height: 190,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'product', arguments: 'product-id'),
            child: const ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: AssetImage('assets/product.png'),
                  width: 120,
                  height: 180,
                  fit: BoxFit.cover,
              ),
            ),
          ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Chip(label: const Text('Dog Food', style: TextStyle(color: Colors.pink)), backgroundColor: Colors.pink[100])),
           const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:Text('Healthy Weight with Farm-Raised Chicke...', maxLines: 2, overflow: TextOverflow.ellipsis)
           ),
            const SizedBox(height: 10),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('\$ 20.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ),
        ],
      ),
    );
  }
  _cardBorders() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0, 5),
        blurRadius: 5,
      )
    ],
  );
}

