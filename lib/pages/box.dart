import 'package:flutter/material.dart';

class box extends StatelessWidget {
  const box({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 0, 0, 0),
          boxShadow: [
            const BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        height: 123,
        width: MediaQuery.of(context).size.width * 0.9,
        // color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                // color: Colors.grey,
                child: Center(
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'card.png',
                    // width: 100,
                    // height: 100,
                  ),
                ),
              ),
              //  const Text("Physical Card"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Physical Card"),
                  const Text("Price - \u{20B9}199"),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Price Breakdown',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Physical Card'),
                                    Text(
                                      '399.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Discount'),
                                    Text(
                                      '200.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.white,
                                ),
                                // SizedBox(width: double.infinity,child:,),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Net payable'),
                                    Text(
                                      '199.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text('Taxes (3036)'),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const Text(
                      'View price breakdown',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
