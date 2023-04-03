import 'package:flutter/material.dart';

class RightPanel extends StatefulWidget {
  const RightPanel({super.key});

  @override
  State<RightPanel> createState() => _RightPanelState();
}

class _RightPanelState extends State<RightPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 840,
        width: 220,
        //color: const Color.fromARGB(255, 44, 39, 39),
        decoration: const BoxDecoration(
          //borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 31, 30, 30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    "GRABSTAR",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(width: 70),
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.green,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 118, 113, 113),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 53, 47, 47),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Color.fromARGB(255, 94, 85, 85)),
                    ),
                    SizedBox(width: 65),
                    Icon(
                      Icons.flaky_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "GrabStar Drive",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.dns_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Enterprise Drive",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.center_focus_strong_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Personel Drive",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.delete,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Recyle Bin",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Color.fromARGB(255, 82, 80, 80),
              ),
              const SizedBox(height: 20),
              Container(
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 118, 113, 113),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 53, 47, 47),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.lock_clock,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Recent",
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 139, 139),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "Grap Star Docs ",
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Icon(
                    Icons.dehaze_sharp,
                    color: Colors.grey,
                    size: 15,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.domain_verification_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Docs ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.domain_verification_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Sheet ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.domain_verification_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Brain Map ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.domain_verification_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Notes ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                    Icons.domain_verification_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Wiki ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
