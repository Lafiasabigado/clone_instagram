import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List storyItems = [
    {
        'pseudo': 'abdias',
        'photo':'assets/images/photo/1.jpg'
    },
    {
      'pseudo': 'lafia',
      'photo':'assets/images/photo/2.jpg'
    },
    {
      'pseudo': 'ines',
      'photo':'assets/images/photo/3.jpg'
    },
    {
      'pseudo': 'juline',
      'photo':'assets/images/photo/4.jpg'
    },
    {
      'pseudo': 'charles',
      'photo':'assets/images/photo/5.jpg'
    },
    {
      'pseudo': 'charlie',
      'photo':'assets/images/photo/6.jpg'
    },
    ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 0.1),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                  Image(image: AssetImage('assets/images/insta_form.jpeg'),
                    height: 72 ,
                  ),
                  Image(image: AssetImage('assets/images/insta_form.jpeg'),
                    height: 69,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    backgroundImage: AssetImage(story['photo'],),
                  ),
                ],
                ),
                const SizedBox(height: 4),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
