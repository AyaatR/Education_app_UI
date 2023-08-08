import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List<String> videos = [
    'Tutorial For Beginners #1',
    'Tutorial For Beginners #2',
    'Tutorial For Beginners #3',
    'Tutorial For Beginners #4',
    'Tutorial For Beginners #5',
    'Tutorial For Beginners #6',
    'Tutorial For Beginners #7',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: Icon(Icons.play_arrow_rounded,
                  color: Theme.of(context).iconTheme.color,
                  size: Theme.of(context).iconTheme.size,
                ),
              ),
              title: Text(
                videos[index],
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              subtitle: const Text('20 min 50 sec'),
            );
          }),
    );
  }
}
