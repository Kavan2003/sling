import 'package:flutter/material.dart';

import 'box.dart';
// import 'form.dart';

class checkOut extends StatelessWidget {
  checkOut(this.myColorScheme);
  var myColorScheme;
  final _formKey = GlobalKey<FormState>();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();
  TextEditingController buildingNameController = TextEditingController();
  TextEditingController roadNameController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: myColorScheme.background,
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_sharp)),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "help?",
                  style: TextStyle(color: myColorScheme.error, fontSize: 20),
                ))
          ]),
      body: SingleChildScrollView(
        child: Container(
          // height: h,
          width: w,
          child: Column(
            children: [
              Text("Order Card",
                  style: TextStyle(
                      color: myColorScheme.onSecondary,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              box(),
              SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: pinCodeController,
                        decoration: InputDecoration(
                          labelText: 'Pin Code',
                          hintText: 'Enter your pin code',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a pin code';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: stateController,
                        decoration: InputDecoration(
                          labelText: 'State',
                          hintText: 'Enter your state',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a state';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: cityController,
                        decoration: InputDecoration(
                          labelText: 'City',
                          hintText: 'Enter your city',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a city';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: houseNumberController,
                        decoration: InputDecoration(
                          labelText: 'House Number',
                          hintText: 'Enter your house number',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a house number';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: buildingNameController,
                        decoration: InputDecoration(
                          labelText: 'Building Name',
                          hintText: 'Enter your building name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a building name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: roadNameController,
                        decoration: InputDecoration(
                          labelText: 'Road Name/Area/Colony',
                          hintText: 'Enter your road name, area, colony',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a road name, area, colony';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: landmarkController,
                        decoration: InputDecoration(
                          labelText: 'Landmark (Optional)',
                          hintText: 'Enter a landmark (optional)',
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              myColorScheme.primary),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              myColorScheme.onSecondary),
                          // side: MaterialStateProperty.all<BorderSide>(
                          // BorderSide.none),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform form submission
                            // e.g., save the data or make an API call
                          }
                        },
                        child: Text('Pay - \u{20B9}199'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
