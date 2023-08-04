import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  //String img;
  //CourseScreen(this.img);
  static const screenRoute = '/Course';

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {

     final data = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
    final title=data['title'] ;
    final numVideos=data['num'] ;

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
            const SizedBox(height: 10,),
            Text('$title Complete Course',
            style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 10,),
            Text('Create by Programming',
              style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 5,),
            Text(' $numVideos  Videos',
              style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
