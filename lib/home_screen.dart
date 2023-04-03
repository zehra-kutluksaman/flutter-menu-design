import 'package:flutter/material.dart';

import 'package:mydesign/right_panel.dart';
import 'package:mydesign/page2.dart';
import 'package:mydesign/page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int PageScreenIndex = 0;
  List<Widget> PageScreen = const [
    RightPanel(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 46, 43, 43),
      body: Container(
        color: const Color.fromARGB(255, 31, 30, 30),
        height: 1000,
        width: 2000,
        child: Row(
          children: [
            //sol panel
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 900,
                width: 300,
                //color: const Color.fromARGB(255, 44, 39, 39),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 48, 44, 44),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        //1.tıklama
                        Column(
                          children: [
                            const Icon(
                              Icons.chat,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 5),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  PageScreenIndex = 0;
                                });
                              },
                              child: const Text(
                                "Chat",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),
                        Container(
                          height: 0.5,
                          width: 40,
                          color: const Color.fromARGB(255, 135, 131, 131),
                        ),
                        const SizedBox(height: 10),

                        //2.tıklama
                        Column(
                          children: [
                            const Icon(
                              Icons.document_scanner,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 5),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  PageScreenIndex = 1;
                                });
                              },
                              child: const Text(
                                "Docs",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 0.5,
                          width: 40,
                          color: const Color.fromARGB(255, 135, 131, 131),
                        ),
                        const SizedBox(height: 10),
                        //3.tıklama
                        Column(
                          children: [
                            const Icon(
                              Icons.star_border_purple500_outlined,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 5),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  PageScreenIndex = 2;
                                });
                              },
                              child: const Text(
                                "Work",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 255),
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 20),
                        const Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 20),
                        const Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 20),
                        const Icon(
                          Icons.audio_file_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    //sol panelin içindeki sağ panel
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 850,
                        width: 220,
                        child: PageScreen[PageScreenIndex],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //sağ panel
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          Text(
                            "Recent",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                    const SizedBox(width: 800),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.file_copy,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "New",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 51, 47, 47),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.upload,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Upload",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 45,
                    width: 1150,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 48, 44, 44),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 48, 44, 44),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
                          child: Text(
                            "Home",
                            style: TextStyle(
                                color: Color.fromARGB(255, 94, 85, 85),
                                fontSize: 17),
                          ),
                        ),
                        SizedBox(width: 80),
                        Text(
                          "Sheets",
                          style: TextStyle(
                              color: Color.fromARGB(255, 94, 85, 85),
                              fontSize: 17),
                        ),
                        SizedBox(width: 80),
                        Text(
                          "Meeting Minutes",
                          style: TextStyle(
                              color: Color.fromARGB(255, 94, 85, 85),
                              fontSize: 17),
                        ),
                        SizedBox(width: 80),
                        Text(
                          "Wiki",
                          style: TextStyle(
                              color: Color.fromARGB(255, 94, 85, 85),
                              fontSize: 17),
                        ),
                        SizedBox(width: 80),
                        Text(
                          "Others",
                          style: TextStyle(
                              color: Color.fromARGB(255, 94, 85, 85),
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: const [
                      Text(
                        "Recently Used",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 720),
                      Text(
                        "Recently Used",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 120),
                      Text(
                        " Size",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 60),
                      Icon(
                        Icons.drag_handle_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.picture_as_pdf,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Client pitch deck.pdf ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const Text(
                            "Robert Fox ",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(width: 650),
                      const Text(
                        "Nov 19, 2016 9:24 AM ",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 70),
                      const Text(
                        " 14.6 GB",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 40),
                      const Icon(
                        Icons.drag_handle_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: 1150,
                  color: Color.fromARGB(255, 65, 62, 62),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.picture_as_pdf,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Client pitch deck.pdf ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const Text(
                            "Robert Fox ",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(width: 650),
                      const Text(
                        "Nov 19, 2016 9:24 AM ",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 70),
                      const Text(
                        " 14.6 GB",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 40),
                      const Icon(
                        Icons.drag_handle_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
