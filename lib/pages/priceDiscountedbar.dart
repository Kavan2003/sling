import 'package:flutter/material.dart';

class disbar extends StatelessWidget {
  const disbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.blue,
      //   // border: ,
      //   borderRadius: BorderRadius.circular(6),
      // ),
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          // Text("data")
          Container(
            margin: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                // border: ,
                borderRadius: BorderRadius.circular(9),
              ),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    child: Container(
                      width: 70,
                      color: Colors.grey,
                      child: Center(
                        child: Image.asset(
                          'card.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(top: 30, right: 60),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "FypCard for just",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors
                                        .white, // Set the text color to white
                                  ),
                                ),
                                Text(
                                  "\u{20B9}199",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors
                                        .amber, // Set the text color to amber
                                    // decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            Text("\u{20B9}399",
                                style: TextStyle(
                                  fontSize: 19,
                                  decoration: TextDecoration.lineThrough,
                                ))
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  // border: ,
                  borderRadius: BorderRadius.circular(6),
                ),
                width: 100,
                height: 25,
                child: const Center(
                  child: Text("Limited Period"),
                )
                // color: const Color.fromARGB(255, 54, 244, 86),
                ),
          ),
        ],
      ),
    );
  }
}
