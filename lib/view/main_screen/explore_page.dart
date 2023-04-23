import 'package:flutter/material.dart';
import 'package:librari/src/my_colors.dart';
import 'package:librari/src/my_strings.dart';

import '../../model/fake_data.dart';
import '../cart_screen.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int currentIndex = 0;
  int _selectIndex = 0;

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
                  child: PageView(
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      children: [
                        banner(size, 'assets/image/banner.png',
                            MyString.bannertitle),
                        banner(size, 'assets/image/banner.png',
                            MyString.bannertitle),
                        banner(size, 'assets/image/banner.png',
                            MyString.bannertitle),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 10,
                      width: currentIndex == 0 ? 50 : 10,
                      decoration: BoxDecoration(
                          color: currentIndex == 0 ? Colors.amber : Colors.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 10,
                      width: currentIndex == 1 ? 50 : 10,
                      decoration: BoxDecoration(
                          color: currentIndex == 1 ? Colors.amber : Colors.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 10,
                      width: currentIndex == 2 ? 50 : 10,
                      decoration: BoxDecoration(
                          color: currentIndex == 2 ? Colors.amber : Colors.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
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
                  physics: const BouncingScrollPhysics(),
                  itemCount: TitleListExplorePgae.titleExplore.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              TitleListExplorePgae.titleExplore[index].title!,
                              style: textThme.caption,
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              width: 50,
                              height: 3,
                              decoration: BoxDecoration(
                                  color: _selectIndex == index
                                      ? Colors.amber
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.2,
              width: double.infinity,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: ListBookGrid.gridDate.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.5, crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CratPage()));
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: size.height / 6,
                              width: size.width / 3.5,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ListBookGrid.gridDate[index].image!),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(16)),
                                  color: Colors.amber),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //name and caption
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ListBookGrid.gridDate[index].title!,
                                      style: textThme.headline5,
                                    ),
                                    Text(
                                      'caption',
                                      style: textThme.caption,
                                    )
                                  ],
                                ),
                                //star
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color:
                                          ListBookGrid.gridDate[index].strar! >=
                                                  1
                                              ? Colors.amber
                                              : Colors.grey,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color:
                                          ListBookGrid.gridDate[index].strar! >=
                                                  2
                                              ? Colors.amber
                                              : Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color:
                                          ListBookGrid.gridDate[index].strar! >=
                                                  3
                                              ? Colors.amber
                                              : Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color:
                                          ListBookGrid.gridDate[index].strar! >=
                                                  4
                                              ? Colors.amber
                                              : Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color:
                                          ListBookGrid.gridDate[index].strar! >=
                                                  5
                                              ? Colors.amber
                                              : Colors.grey,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
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
