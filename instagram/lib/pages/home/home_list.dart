import 'package:flutter/material.dart';
import 'package:instagram/pages/home/home_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (c, i) => i == 0
          ? SizedBox(
              child: HomeStories(),
              height: deviceSize.height * 0.17,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // 1- Feeds - Header
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://avatars1.githubusercontent.com/u/11331745"))),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Goeroeku",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                // 2 - Feeds - Image
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    "https://raw.githubusercontent.com/goeroeku/flutter-exploration/master/flutter-bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // 3 - Feeds - Cicat Icon
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.heart),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      Icon((FontAwesomeIcons.bookmark))
                    ],
                  ),
                ),
                // 4 - Feeds - Comment Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by erlang, pk and 123.456 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // 5 - Feeds - Comment
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://avatars1.githubusercontent.com/u/11331745"))),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment ..."),
                        ),
                      )
                    ],
                  ),
                ),
                // 6 - Feeds - Time
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "1 Day Ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
    );
  }
}
