import 'package:flutter/material.dart';

import 'benefit.dart';
import 'priceDiscountedbar.dart';

class home extends StatelessWidget {
  // const home({super.key});
  var myColorScheme;
  home({super.key, required this.myColorScheme});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColorScheme.secondary,
        centerTitle: true,
        title: const Text("Fyp Card"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            // child: ,
            // color: Theme.of(context).colorScheme.error,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.34,
            // color: myColorScheme.primary,
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.34 * 0.5,
                // color: myColorScheme.,
                width: double.infinity,
                child: const disbar(),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.34 * 0.5,
                // color: myColorScheme.error,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/benefit');
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                          foregroundColor: myColorScheme.surface,
                          backgroundColor: myColorScheme.primary,
                          // textStyle: Theme.of(context).textTheme.bodyMedium,
                        ),
                        child: const Text("Order Card",
                            style: TextStyle(fontSize: 20)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Have a promo code? here",
                            style: TextStyle(color: myColorScheme.onSurface),
                          ))
                    ]),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
