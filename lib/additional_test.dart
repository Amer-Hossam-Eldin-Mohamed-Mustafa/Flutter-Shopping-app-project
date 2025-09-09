// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required String title});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List names = ["Amer", "V", "silverhand", "panam", "vito"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),

//       // body: ListView.builder(
//       //   itemCount: names.length,
//       //   itemBuilder: (context, index) {
//       //     return Center(
//       //       child: Text(
//       //         names[index],
//       //         style: TextStyle(
//       //           fontFamily: "Oswald",
//       //           fontSize: 40,
//       //           color: Colors.blue,
//       //         ),
//       //       ),
//       //     );
//       //   },
//       // ),
//       // body: GridView.builder(
//       //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//       //     crossAxisCount: 5,
//       //   ),
//       //   itemCount: 20,
//       //   itemBuilder: (BuildContext context, int index) {
//       //     return Padding(
//       //       padding: const EdgeInsets.all(8.0),
//       //       child: Container(width: 20, height: 20, color: Colors.amber),
//       //     );
//       //   },
//       // ),
//       // body: PageView(
//       //   children: [
//       //     Container(
//       //       child: Center(
//       //         child: Text(
//       //           "page 1",
//       //           style: TextStyle(fontSize: 40, fontFamily: "Oswald"),
//       //         ),
//       //       ),
//       //       color: Colors.amber,
//       //     ),
//       //     Container(
//       //       child: Center(
//       //         child: Text(
//       //           "page 2",
//       //           style: TextStyle(fontSize: 40, fontFamily: "Oswald"),
//       //         ),
//       //       ),
//       //       color: Colors.blue,
//       //     ),
//       //     Container(
//       //       child: Center(
//       //         child: Text(
//       //           "page 3",
//       //           style: TextStyle(fontSize: 40, fontFamily: "Oswald"),
//       //         ),
//       //       ),
//       //       color: Colors.green,
//       //     ),
//       //     Container(
//       //       child: Center(
//       //         child: Text(
//       //           "page 4",
//       //           style: TextStyle(fontSize: 40, fontFamily: "Oswald"),
//       //         ),
//       //       ),
//       //       color: Colors.red,
//       //     ),
//       //   ],
//       // ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(width: 100, height: 100, color: Colors.amber),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(width: 100, height: 100, color: Colors.blue),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(width: 100, height: 100, color: Colors.green),
//           ),
//         ],
//       ),
//     );
//   }
// }
