import 'package:eduction_ui/course_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const ScreenRoute = '/HomeScreen';
  List catNames = [
    'Category',
    'Classes',
    'Free Courses',
    'BookStore',
    'Live Course',
    'LeaderBoard'
  ];
  List<Icon> catIcons = [
    const Icon(Icons.category),
    const Icon(Icons.video_library),
    const Icon(Icons.assessment),
    const Icon(Icons.store),
    const Icon(Icons.play_circle_fill),
    const Icon(Icons.emoji_events),
  ];

  List<Color> catColors = [
    Colors.green,
    Colors.blue,
    Colors.deepOrange,
    Colors.orange,
    Colors.pinkAccent,
    Colors.deepPurple
  ];
  List imgList = ['Flutter', 'ReactNative', 'Python', 'c#'];

  var Courses = {'Flutter': 34, 'ReactNative': 25, 'Python': 20, 'c#': 10};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Text(
                  'Hi , Programmer',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: TextFormField(
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'search here',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black54,
                        ),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1.1),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: catColors[index]),
                        child: catIcons[index],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courses',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'see all',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 50 - 25) /
                              (4 * 270),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(CourseScreen.screenRoute,
                            arguments: {
                              'title': imgList[index],
                              'num':Courses[imgList[index]],

                            }
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE6E6FA),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Image.asset(
                                "assets/images/${imgList[index]}.png",
                                fit: BoxFit.contain,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Text(
                              imgList[index],
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            Text(
                              '${Courses[imgList[index]].toString()} videos',
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.deepPurpleAccent,
      //   unselectedItemColor: Colors.grey,
      //   showSelectedLabels: true,
      //   iconSize: 35,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.assignment),
      //       label: 'Course',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Wishlist',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Account',
      //     ),
      //   ],
      // ),
    );
  }
}
