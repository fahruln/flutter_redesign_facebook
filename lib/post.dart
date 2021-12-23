import 'package:flutter/material.dart';

Widget post(String profile, name, link) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 10,
          color: Colors.grey.shade300,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.only(left: 15, right: 15),
          height: 60,
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                foregroundImage: NetworkImage(profile),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Colors.blueGrey,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '2 hours ago',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'COVID-19',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 15),
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(link), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('368')
                ],
              ),
              Text('27 Comments'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, left: 10, right: 10),
          height: 1,
          color: Colors.grey.shade300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Like')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Comment')
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
