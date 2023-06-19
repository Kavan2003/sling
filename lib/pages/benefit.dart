import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sling_project1/pages/priceDiscountedbar.dart';

// ignore: must_be_immutable
class benefit extends StatelessWidget {
  benefit(this.myColorScheme);
  var myColorScheme;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColorScheme.surface,
        // centerTitle: true,
        // title: const Text("Fyp Card"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: Container(
        height: h,
        width: w,
        // padding: EdgeInsets.fromLTRB(w * 0.05, h * 0.05, w * 0.05, h * 0.05),
        child: Column(children: [
          // // ShrinkWrappingViewport(offset: offset)
          // ShrinkWrappingViewport(
          //   offset: ViewportOffset.fixed(1),
          //   slivers: [
          //     disbar(),
          //   ],
          // ),
          const disbar(),
          const Text(
            "Your Fyp Card comes with ",
            style: TextStyle(fontSize: 25),
          ),
          const Text(
            "great benefits ",
            style: TextStyle(fontSize: 25),
          ),
          Container(
            height: h * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    child: Image.asset('card.png',
                        fit: BoxFit.fitWidth), // Replace with your image path
                  ),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Earn ',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        TextSpan(
                          text: '5X mynts',
                          style: TextStyle(
                              color: myColorScheme.primary, fontSize: 15),
                        ),
                        TextSpan(
                          text: ' on both online and offline transactions',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    child: Image.asset('card.png',
                        fit: BoxFit.fitWidth), // Replace with your image path
                  ),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '10% instant cashback',
                          style: TextStyle(
                              color: myColorScheme.primary, fontSize: 20),
                        ),
                        TextSpan(
                          text: ' on top brands',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    child: Image.asset('card.png',
                        fit: BoxFit.fitWidth), // Replace with your image path
                  ),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Get one airport lounge access worth ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        TextSpan(
                          text: '\u{20B9}1500',
                          style: TextStyle(
                              fontSize: 20, color: myColorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            child: Text(
              "continue",
              style: TextStyle(fontSize: 17),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/per');
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
              foregroundColor: myColorScheme.surface,
              backgroundColor: myColorScheme.primary,
              // textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ]),
      ),
      // body: ,
    );
  }
}
