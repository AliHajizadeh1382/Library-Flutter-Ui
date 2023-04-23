import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:librari/model/fake_data.dart';

class CratPage extends StatefulWidget {
  @override
  State<CratPage> createState() => _CratPageState();
}

class _CratPageState extends State<CratPage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThme = Theme.of(context).textTheme;

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Container(
                width: size.width / 1.10,
                height: size.height / 4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/2b.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.amber),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  //profill
                  Container(
                      width: size.width / 5,
                      height: size.height / 10,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/avatar.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      )),

                  // name
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'hana samsdi',
                        style: textThme.headline2,
                      ),
                      const Text(
                        'hana samsdi',
                      ),
                      //star
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.amber,
                          ),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 10,
                            width: 1,
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(1))),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '1,500 Reads',
                            style: textThme.caption,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: const Text(
                          'About',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: const Text(
                          'Reviews',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                setState(() {
                                  selectedIndex = 3;
                                });
                              });
                            },
                            child: const Text(
                              'Author',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 5,
                    width: size.width / 1.25,
                    decoration: BoxDecoration(
                        color: Colors.amber[300],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
