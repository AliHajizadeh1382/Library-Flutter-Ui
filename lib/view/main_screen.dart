import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:librari/src/my_colors.dart';
import 'package:librari/src/my_strings.dart';

import '../model/fake_data.dart';
import 'cart_screen.dart';
import 'main_screen/explore_page.dart';
import 'main_screen/library_page.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class MyLisbraryPage extends StatefulWidget {
  @override
  State<MyLisbraryPage> createState() => _MyLisbraryPageState();
}

class _MyLisbraryPageState extends State<MyLisbraryPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThme = Theme.of(context).textTheme;

    List<Widget> pages = [
      LibararyPage(textThme: textThme, size: size),
      ExplorePage(),
    ];
    return SafeArea(
        child: Scaffold(
            key: _key,
            backgroundColor: SloidColors.primaryColor,
            drawer: const Drawer(
              child: ListTile(),
            ),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: SloidColors.primaryColor,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.fromLTRB(8, 32, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: const Icon(
                        CupertinoIcons.line_horizontal_3_decrease,
                        color: Colors.black,
                      ),
                    ),
                    //Serch
                    Container(
                      width: size.width / 1.75,
                      height: size.height / 20,
                      decoration: const BoxDecoration(
                          color: SloidColors.backgroundSerchColor,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            CupertinoIcons.search,
                            color: SloidColors.iconSerchColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.doc_text_viewfinder,
                      color: Colors.black,
                    ),
                    const ImageIcon(
                      AssetImage(
                        'assets/icons/xing.png',
                      ),
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            body: pages[pageIndex],
            bottomNavigationBar: Container(
              height: size.height / 11,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                height: size.height / 11,
                color: SloidColors.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              pageIndex = 0;
                              print(pageIndex);
                              setState(() {});
                            },
                            icon: ImageIcon(
                              const AssetImage(
                                'assets/icons/icon.png',
                              ),
                              color: pageIndex == 0
                                  ? SloidColors
                                      .bottomNavigationBarSelectedIconColor
                                  : SloidColors.iconSerchColor,
                            )),
                        Text(
                          'My Library',
                          style: textThme.caption,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              pageIndex = 1;
                              print(pageIndex);
                              setState(() {});
                            },
                            icon: ImageIcon(
                              const AssetImage('assets/icons/icon4.png'),
                              color: pageIndex == 1
                                  ? SloidColors
                                      .bottomNavigationBarSelectedIconColor
                                  : SloidColors.iconSerchColor,
                            )),
                        Text(
                          'Explore',
                          style: textThme.caption,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                                AssetImage('assets/icons/icon2.png'))),
                        Text(
                          'Carty',
                          style: textThme.caption,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                                AssetImage('assets/icons/icon3.png'))),
                        Text(
                          'Community',
                          style: textThme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
