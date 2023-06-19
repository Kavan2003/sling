import 'package:flutter/material.dart';

import 'MergeC.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  var blockUnblockCardValue = false;
  var mergeChannelsValue = false;
  double _sliderValue = 500;

  void _setSliderValue(BuildContext context, double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _cancelSelection() {
    // Implement the cancel logic here
  }

  void _confirmSelection() {
    // Implement the confirm logic here
  }

  // @override
  // void initState() {
  //   Managevalue = false;
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_sharp)),
        centerTitle: true,
        title: const Text('Card Details'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.headset_mic))
        ],
      ),
      body: Column(children: [
        Container(
          height: h * 0.5,
          child: Image.asset("card2.jpg"),
        ),
        Container(
          height: h * 0.1,
          width: w * 0.9,
          child: Card(
              child: Column(
            children: [
              const Text("Get Insights into your spends!"),
              TextButton(onPressed: () {}, child: const Text("Check Now"))
            ],
          )),
        ),
        Container(
          height: h * 0.29,
          // color: Color.fromARGB(255, 55, 59, 78),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: const Color.fromARGB(255, 55, 59, 78),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    // style: ListTileStyle.list,
                    title: const Text("order Card"),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: const Color.fromARGB(255, 55, 59, 78),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    // style: ListTileStyle.list,
                    title: const Text("Transaction History"),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/history');
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: const Color.fromARGB(255, 55, 59, 78),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    // style: ListTileStyle.list,
                    title: const Text("Card Settings"),
                    trailing: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                // Bottom sheet content goes here
                                height: 300,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                width: double.infinity,
                                // color: Colors.amber,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Card Settings",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 135, 145, 197),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                    ListTile(
                                      tileColor: const Color.fromARGB(255, 55,
                                          59, 78), // Adding background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Making corners curved
                                      ),
                                      // elevation: 2, // Adding elevation
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8,
                                              horizontal: 16), // Adding padding
                                      title: const Text(
                                        "Block/Unblock Card",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      trailing: IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              var Managevalue = true;

                                              return Container(
                                                color: Colors.black,
                                                height: 200,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                      'Block/Unblock Card',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    const SizedBox(height: 16),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                            'virtual card'),
                                                        Switch(
                                                            value: Managevalue,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                Managevalue =
                                                                    value;
                                                              });
                                                            }),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 16),
                                                    const Text(
                                                        "All your card services will be unblocked till you switch it off from the app. You can block it anytime you want.")
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        icon:
                                            const Icon(Icons.arrow_forward_ios),
                                        color: Colors.white,
                                      ),
                                    ),
// Setting Up Limit and Merge Channels
                                    ListTile(
                                      tileColor:
                                          const Color.fromARGB(255, 55, 59, 78),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // elevation: 2,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 16),
                                      title: const Text(
                                        "Setting Up Limit",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      trailing: IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Selected Value: ${_sliderValue.toInt()}',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    Slider(
                                                      value: _sliderValue,
                                                      min: 500,
                                                      max: 100000,
                                                      divisions: 995,
                                                      onChanged: (value) {
                                                        _setSliderValue(
                                                            context, value);
                                                      },
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed:
                                                              _cancelSelection,
                                                          child: Text('Cancel'),
                                                        ),
                                                        SizedBox(width: 16),
                                                        ElevatedButton(
                                                          onPressed:
                                                              _confirmSelection,
                                                          child: Text('Set'),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        icon:
                                            const Icon(Icons.arrow_forward_ios),
                                        color: Colors.white,
                                      ),
                                    ),
                                    ListTile(
                                      tileColor:
                                          const Color.fromARGB(255, 55, 59, 78),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // elevation: 2,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 16),
                                      title: const Text(
                                        "Merge Channels",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      trailing: IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              // var Managevalue = true;
                                              return mC();
                                            },
                                          );
                                        },
                                        icon:
                                            const Icon(Icons.arrow_forward_ios),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
