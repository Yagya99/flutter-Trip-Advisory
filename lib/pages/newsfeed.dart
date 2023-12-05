import 'package:flutter/material.dart';
import 'package:newtravelapp/widgets/postsitem.dart';
import 'package:newtravelapp/widgets/saveitem.dart';
import 'package:newtravelapp/widgets/storyitem.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 10.0),
                  StoryItem(),
                  Text(
                    'Popular Locations',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SavedItem(),
                  Text(
                    'Feeds',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PostItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
