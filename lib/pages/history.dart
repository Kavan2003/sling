import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class history extends StatelessWidget {
  history({super.key});
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text("Transaction History"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(Icons.candlestick_chart_rounded)),
        ],
      ),
      body: isLoading
          ? ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return showLoadingScreen();
              },
            )
          : showContent(),
    );
  }
}

bool isLoading = true;

// Widget build(BuildContext context) {
//   return Scaffold(
//     body: isLoading ? showLoadingScreen() : showContent(),
//   );
// }

Widget showLoadingScreen() {
  return Shimmer(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          // Colors.white24,
          Colors.grey, Colors.grey,
          Colors.black,
          Colors.grey, Colors.grey,
          // Colors.white24,
        ]),
    period: Duration(seconds: 02),
    child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
      ),
      title: Container(
        width: double.infinity,
        height: 20,
        color: Colors.grey,
      ),
      subtitle: Container(
        width: double.infinity,
        height: 15,
        color: Colors.grey,
      ),
      trailing: Container(
        width: 40,
        height: double.infinity,
        color: Colors.grey,
      ),
    ),
  );
}

Widget showContent() {
  // Replace this with your actual content widget
  return Container(
    child: Text("No Data Found"),
  );
}
