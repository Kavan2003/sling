import 'package:flutter/material.dart';

class Per extends StatefulWidget {
  Per(this.myColorScheme);
  var myColorScheme;

  @override
  State<Per> createState() => _PerState();
}

class _PerState extends State<Per> {
  var enteredText = "Name";
  @override
  void initState() {
    super.initState();
    enteredText = "Enter Name";
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: widget.myColorScheme.surface,
        // centerTitle: true,
        // title: const Text("Fyp Card"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: Column(
        children: [
          Container(
            height: h * 0.1,
            width: double.infinity,
            // color: Colors.blue,
            child: const Center(
                child: Text(
              "Personalise Your Card",
              style: TextStyle(fontSize: 25),
            )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 60),
            height: h * .5,
            width: double.infinity,
            // color: Colors.amber,
            child: Stack(
              children: [
                Image.asset('card2.jpg'),
                Positioned(
                  child: Text(
                    '$enteredText',
                    style: TextStyle(
                        fontSize: 25,
                        backgroundColor: Colors.black.withOpacity(0.3),
                        color: Colors.white),
                  ),
                  top: 120,
                  right: 80,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: h * 0.1,
            width: 300,
            // color: Colors.blue,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Name",
                hintStyle: const TextStyle(color: Colors.white),
                // fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                // print("object");
                setState(() {
                  // print("objecddt");
                  enteredText = value;
                  // print(enteredText);
                });
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              height: h * 0.07,
              width: 200,
              // color: Colors.amber,
              child: TextButton(
                onPressed: () {
                  print("object");
                  Navigator.pushNamed(context, '/checkout');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
