import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List postItems = [
    {
      'pseudo': 'abdias',
      'photo':'assets/images/photo/1.jpg',
      'photoProfil': 'assets/images/profil/t1.jpg',
      'description' : 'Description of image',
    },
    {
      'pseudo': 'lafia',
      'photo':'assets/images/photo/2.jpg',
      'photoProfil': 'assets/images/profil/t2.jpg',
      'description' : 'Description of image',
    },
    {
      'pseudo': 'ines',
      'photo':'assets/images/photo/3.jpg',
      'photoProfil': 'assets/images/profil/t3.jpg',
      'description' : 'Description of image',
    },
    {
      'pseudo': 'juline',
      'photo':'assets/images/photo/4.jpg',
      'photoProfil': 'assets/images/profil/t4.jpg',
      'description' : 'Description of image',
    },
    {
      'pseudo': 'charles',
      'photo':'assets/images/photo/5.jpg',
      'photoProfil': 'assets/images/profil/t5.jpg',
      'description' : 'Description of image',
    },
    {
      'pseudo': 'charlie',
      'photo':'assets/images/photo/6.jpg',
      'photoProfil': 'assets/images/profil/t6.jpg',
      'description' : 'Description of image',
    },
  ] ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return  Column(
          children: [
            Container(
              height: 50,
              //color: Colors.grey,
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10,),
                  Text(post['pseudo'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5,),
                  Image.asset('assets/images/badge.jpg',height: 13,),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover,
                ),
              ),
              //margin: const EdgeInsets.only(top: 10),
              //color: Colors.blue,
              //height: 300,
              //child: Image.asset(post['photo']),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_outline)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photo']),
                  ),
                  const SizedBox(width: 10,),
                  RichText(text: TextSpan(
                      text: 'Aimé par ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                        text: post['pseudo'],
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),

                      TextSpan(
                        text: ' et ',
                      ),
                        TextSpan(
                          text: '1502 autres personnes ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                  ),
                  ),
                ],
              ),
            ),
           const SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(post['pseudo'],style: const TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Expanded(
                          child: Text(post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,),
                      ),
                      const SizedBox(height: 10,),
                      Text("See more",style: TextStyle(fontWeight: FontWeight.w600,
                          color: Colors.grey.shade400),),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Text("See 555 comments",style: TextStyle(fontWeight: FontWeight.w600,
                      color: Colors.grey.shade400),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                    Text('4 min ago - ',
                        style: TextStyle(fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400
                        )
                    ),
                      Text('Translate',
                          style: TextStyle(fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600
                          )
                      ),
                  ],
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
      );
  }
}
