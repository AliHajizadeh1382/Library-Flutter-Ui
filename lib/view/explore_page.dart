import 'package:flutter/material.dart';
import 'package:librari/src/my_colors.dart';
import 'package:librari/src/my_strings.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            //banner
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 5,
                  width: double.infinity,
                  child: PageView(children: [
                    banner(
                        size, 'assets/image/banner.png', MyString.bannertitle),
                    banner(
                        size, 'assets/image/banner.png', MyString.bannertitle),
                    banner(
                        size, 'assets/image/banner.png', MyString.bannertitle),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 10,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ],
                )
              ],
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: textThme.headline2,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'data',
                        style: textThme.caption,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Padding banner(
    Size size,
    String image,
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          height: size.height / 5,
          width: size.width / 1.2,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              color: Colors.amber,
              borderRadius: const BorderRadius.all(Radius.circular(16))),
        ),
        Positioned(
          left: 8,
          top: 8,
          child: Text(
            title,
            style: const TextStyle(
                color: SloidColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
            bottom: 50,
            left: 8,
            child: Container(
              height: 25,
              width: size.width / 5,
              decoration: const BoxDecoration(
                  color: SloidColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: const Center(
                  child: Text(
                'Explore',
                style: TextStyle(color: SloidColors.title1, fontSize: 12),
              )),
            ))
      ]),
    );
  }
}
