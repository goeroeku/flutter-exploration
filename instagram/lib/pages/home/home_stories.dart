import 'package:flutter/material.dart';

class HomeStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (c, i) => Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/C5103AQEEu8znf_Yc_A/profile-displayphoto-shrink_200_200/0?e=1560988800&v=beta&t=rNm1JMUYv1c6JXKmOOGNMBVIu5XuUY7ERnajUIFPzKg")),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                ),
                i == 0
                    ? Positioned(
                        right: 10.0,
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.add,
                            size: 14.0,
                            color: Colors.white,
                          ),
                        ))
                    : Container()
              ],
            ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[topText, stories],
      ),
    );
  }
}
