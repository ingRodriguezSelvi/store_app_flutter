import 'package:flutter/material.dart';

class  ServiceSliders extends StatelessWidget {
  const ServiceSliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Popular Services', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (_, int index) => const _ServicePoster(),
            ),
          )
        ]
      ),
    );
  }
}
class _ServicePoster extends StatelessWidget {
  const _ServicePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _cardBorders(),
      width: 130,
      height: 160,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'product', arguments: 'product-id'),
            child: const ClipRRect(
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://www.petsrwise.com/wp-content/uploads/2020/12/DW.png'),

                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
  _cardBorders() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0, 5),
        blurRadius: 5,
      )
    ],
  );
}
