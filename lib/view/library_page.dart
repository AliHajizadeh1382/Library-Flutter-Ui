import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/fake_data.dart';
import '../src/my_colors.dart';
import '../src/my_strings.dart';

class LibararyPage extends StatelessWidget {
  const LibararyPage({
    super.key,
    required this.textThme,
    required this.size,
  });

  final TextTheme textThme;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //list1
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      MyString.hitext,
                      style: textThme.headline1,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      MyString.titleList1,
                      style: textThme.headline2,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: size.height / 3,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: ListBook.listDate.length,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //image
                                Container(
                                  height: size.height / 4.5,
                                  width: size.width / 3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            ListBook.listDate[index].image!,
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                ),

                                //title
                                Text(ListBook.listDate[index].title!),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: size.width / 3.6,
                                          height: 5,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  136, 151, 151, 151),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                        ),
                                        Container(
                                          width: size.width / 4,
                                          height: 5,
                                          decoration: const BoxDecoration(
                                              color: SloidColors.title1,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                        '${ListBook.listDate[index].percent!}%')
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // title and Seee More
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyString.titleList2,
                        style: textThme.headline3,
                      ),
                      Container(
                        width: size.width / 5,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: SloidColors.captionColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            )),
                        child: Center(
                            child: Text(
                          'See More',
                          style: textThme.headline4,
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: ListBookGrid.gridDate.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1.8, crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: size.height / 8,
                                  width: size.width / 6,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(ListBookGrid
                                              .gridDate[index].image!),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(16)),
                                      color: Colors.amber),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //name and caption
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: ListBookGrid
                                                      .gridDate[index].strar! >=
                                                  1
                                              ? Colors.amber
                                              : Colors.grey,
                                          size: 13,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 13,
                                          color: ListBookGrid
                                                      .gridDate[index].strar! >=
                                                  2
                                              ? Colors.amber
                                              : Colors.grey,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 13,
                                          color: ListBookGrid
                                                      .gridDate[index].strar! >=
                                                  3
                                              ? Colors.amber
                                              : Colors.grey,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 13,
                                          color: ListBookGrid
                                                      .gridDate[index].strar! >=
                                                  4
                                              ? Colors.amber
                                              : Colors.grey,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 13,
                                          color: ListBookGrid
                                                      .gridDate[index].strar! >=
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
                          );
                        }),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
