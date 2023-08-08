
import 'package:eduction_ui/Screens/tabs_screen.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.66,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100))),
                  child: Center(
                      child: Image.asset(
                    'assets/books.png',
                    scale: 0.8,
                  )),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.444,
                decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(170))),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.555,
                padding: const EdgeInsets.only(top: 60, bottom: 30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Text(
                      'Learing is Everything ',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Text(
                        'Learing with Pleasure with Dear Programmer Wherver are.',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Material(
                      color: Colors.deepPurpleAccent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(TabsScreen.screenRoute);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 90, vertical: 20),
                            child: Text(
                              'Get Started',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
