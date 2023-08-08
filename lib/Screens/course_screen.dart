import 'package:eduction_ui/widgets/Decription_section.dart';
import 'package:flutter/material.dart';

import '../widgets/video_section.dart';

class CourseScreen extends StatefulWidget {
  //String img;
  //CourseScreen(this.img);
  static const screenRoute = '/Course';

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection = true;

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = data['title'];
    final numVideos = data['num'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white,
        title: Text('$title'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(

          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            Container(
              //padding: const EdgeInsets.symmetric(vertical: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: const Color(0xFFE6E6FA),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/$title.png'),
                  )),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(Icons.play_arrow_rounded,
                      color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$title Complete Course',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Create by Programming',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              ' $numVideos  Videos',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFE6E6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Material(
                    color: isVideoSection
                        ? Colors.deepPurpleAccent.withOpacity(0.6)
                        : Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = true;
                        });
                      },
                      child: buildContainer('Videos'),
                    ),
                  ),
                  Material(
                    color: isVideoSection
                        ? Theme.of(context).primaryColor
                        : Colors.deepPurpleAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = false;
                        });
                      },
                      child: buildContainer('Description'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isVideoSection? VideoSection():DescripttionSection(),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String textData) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(textData, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}
