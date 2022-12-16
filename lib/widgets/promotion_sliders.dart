

import 'package:flutter/material.dart';

class PromotionSliders extends StatelessWidget {
  const PromotionSliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _ServiceSlider(
            image: 'https://petsrwise-development.s3.sa-east-1.amazonaws.com/banner_001.png',
          ),
          _ServiceSlider(
            image: 'https://petsrwise-development.s3.sa-east-1.amazonaws.com/banner_002.png',
          ),
          _ServiceSlider(
            image: 'https://petsrwise-development.s3.sa-east-1.amazonaws.com/banner_003.png',
          ),
          _ServiceSlider(
            image: 'https://petsrwise-development.s3.sa-east-1.amazonaws.com/banner_004.png',
          ),
          _ServiceSlider(
            image: 'https://petsrwise-development.s3.sa-east-1.amazonaws.com/banner_005.png',
          ),
          _ServiceSlider(
            image: 'https://petsrwise-development.s3.sa-east-1.amazonaws.com/banner_006.png',
          ),
        ],
      ),
    );
  }
}

class _ServiceSlider extends StatelessWidget {
  final String image;
  final String? title;
  final String? subtitle;

  const _ServiceSlider({
    Key? key,
    required this.image,
     this.title,
     this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              title != null
                  ? Text(
                    title!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))
                  : const SizedBox(),
              const SizedBox(height: 10),
             subtitle != null
              ? Text(
                subtitle!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              )
              : const SizedBox(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
