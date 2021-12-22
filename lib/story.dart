import 'package:flutter/material.dart';

List story = [];

Widget myStory(link) {
  return Container(
      margin: EdgeInsets.only(left: 15),
      width: 110,
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(link), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigoAccent.shade700,
                      border: Border.all(width: 3, color: Colors.white)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Your Story',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ],
      ));
}

Widget storypost(link, profile, name) {
  return Container(
      margin: EdgeInsets.only(left: 15),
      width: 110,
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(link), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(profile), fit: BoxFit.cover),
                      border: Border.all(width: 3, color: Colors.white)),
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ));
}
