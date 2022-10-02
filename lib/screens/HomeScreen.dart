import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Center(
        //     child: Text(
        //       "Get Latest News",
        //       style: TextStyle(color: Colors.black),
        //     ),
        //   ),
        // ),
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height / 12,
                width: size.width / 1.1,
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: size.width / 4,
                    ),
                    Text(
                      "News app",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return listItems(size);
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget listItems(Size size) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: size.height / 4,
        width: size.width / 1.2,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.pinkAccent)),
      ),
    );
  }
}
