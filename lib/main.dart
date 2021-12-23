import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'story.dart';
import 'post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                      color: Colors.indigoAccent.shade700,
                      image: NetworkImage(
                          'https://babettescafe.com/wp-content/uploads/2019/03/facebook-logo-full-transparent.png',
                          scale: 17)),
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        CupertinoIcons.bell,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        CupertinoIcons.chat_bubble,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          foregroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1596646285603-e5f9bbfa524a?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDkyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 300,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(
                            left: 15,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "What's on your mind?",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        news(Icons.videocam, 'Live'),
                        news(Icons.photo, 'Photos'),
                        news(Icons.meeting_room, 'Room')
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                    color: Colors.grey.shade300,
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        myStory(
                          'https://images.unsplash.com/photo-1596646285603-e5f9bbfa524a?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDkyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                        ),
                        storypost(
                            'https://images.unsplash.com/photo-1543899161-d044e847c40f?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8dG93SlpGc2twR2d8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'https://images.unsplash.com/photo-1516404721625-734069b0d2c9?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8dG93SlpGc2twR2d8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'Anita Michael'),
                        storypost(
                            'https://images.unsplash.com/photo-1628646435405-09fd8f4be99d?ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Nnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'https://images.unsplash.com/photo-1628646440798-7c8fb5814ec8?ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'Hannah'),
                        storypost(
                            'https://images.unsplash.com/photo-1516637897631-79d2d7f8a182?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'https://images.unsplash.com/photo-1630026317249-c1c83b21ea07?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ2fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'Ramiro Prianarosa'),
                        storypost(
                            'https://images.unsplash.com/photo-1629840326306-0b1387eeed97?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDc1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                            'Toa Heftiba')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            post(
                'https://images.unsplash.com/photo-1628646440798-7c8fb5814ec8?ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                'Hannah',
                'https://images.unsplash.com/photo-1629086163308-4edcb13f1eed?ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60')
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            selectedItemColor: Colors.indigoAccent.shade700,
            unselectedItemColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            iconSize: 30,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_2), label: 'Person'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.play_rectangle), label: 'play'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.storefront), label: 'Store'),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 15,
                    foregroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1596646285603-e5f9bbfa524a?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDkyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60'),
                  ),
                  label: 'profile')
            ],
          ),
        ),
      ),
    );
  }

  Container news(IconData icon, String nama) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.blueGrey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            nama,
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
