
import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  get body => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To Time,',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Nakharin Tangchariyaphai',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //SizedBox(width: 8.0),mainAxisAlignment: MainAxisAlignment.center,
                        //             children: <Widget>[
                        //               CustomImageTextWidget(
                        //                 imagePath: 'assets/watch1.jpg', //ระบุรูปภาพ
                        //                 text: 'Widget 1',
                        //               ),
                        //               CustomImageTextWidget(
                        //                 imagePath: 'assets/watch2.jpg', // ระบุที่อยู่ของรูปภาพที่คุณต้องการใช้
                        //                 text: 'Widget 2',
                        Image.asset(
                          'assets/images/watch2.jpg'
                              '',
                          width: 40.0,
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/watch1.jpg'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text('Watch Data List All Time', style: TextStyle(fontSize: 26.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม All Topics
                        Expanded(
                          child: CategoryButton(
                            text: 'Common',
                            icon: Icons.circle,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Popular
                        Expanded(
                          child: CategoryButton(
                            text: 'Popular',
                            icon: Icons.bolt,
                            color: Colors.blue,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Newest
                        Expanded(
                          child: CategoryButton(
                            text: 'Newest',
                            icon: Icons.sunny,
                            color: Colors.orange,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Advanced
                        Expanded(
                          child: CategoryButton(
                            text: 'Rare',
                            icon: Icons.diamond,
                            color: Colors.green,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Find'),
                        ),
                      ),
                    ),
                  ),

                  CategoryButton(text: 'All watch', icon: Icons.watch , color: Colors.red , isSelected: true)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

