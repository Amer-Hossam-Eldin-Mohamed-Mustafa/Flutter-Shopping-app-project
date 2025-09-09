// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required String title});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Container(color: Colors.white, width: 200),
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("home screen"),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               "action",
//               style: TextStyle(fontSize: 30, fontFamily: "Oswald"),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Image.network("https://picsum.photos/200"),
//           Text("hello", style: TextStyle(fontFamily: "Oswald", fontSize: 40)),
//           InkWell(
//             onLongPress: () => print("tapped"),
//             onDoubleTap: () => print("double tapped"),
//             child: Container(
//               width: MediaQuery.of(context).size.width / 2,
//               height: MediaQuery.of(context).size.height * 0.2,
//               color: Colors.amber,
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},

//         child: Icon(Icons.add_alarm_rounded),
//       ),
//       bottomNavigationBar: Container(height: 40, color: Colors.blue),
//     );
//   }
// }
