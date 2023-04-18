import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:librari/src/my_colors.dart';
import 'package:librari/src/my_strings.dart';

import '../model/fake_data.dart';
import 'explore_page.dart';
import 'library_page.dart';

class MyLisbraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
            backgroundColor: SloidColors.primaryColor,
            appBar: AppBar(
              backgroundColor: SloidColors.primaryColor,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.fromLTRB(8, 32, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      CupertinoIcons.line_horizontal_3_decrease,
                      color: Colors.black,
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
            body:
                // ExplorePage(),
                LibararyPage(textThme: textThme, size: size),
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
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/icons/icon.png'),
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
                            onPressed: () {},
                            icon: const ImageIcon(
                                AssetImage('assets/icons/icon4.png'))),
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
