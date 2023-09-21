import 'package:flutter/material.dart';

class chatWisget extends StatefulWidget {
  const chatWisget({super.key});

  @override
  State<chatWisget> createState() => _chatWisgetState();
}

class _chatWisgetState extends State<chatWisget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(children: [
          for (int i = 1; i < 7; i++)
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "asset/dp$i.png",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Hari',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Hallo... ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '12:33',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff0fce5e),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Color(0xff0fce5e),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, color: Colors.white),
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
        ]),
      ),
    );
  }
}
