// import 'package:flutter/material.dart';
// import 'package:my_first_app/main.dart';

// class StreetLightDetailsScreen extends StatelessWidget {
//   final StreetLight streetLight;
//   const StreetLightDetailsScreen({required this.streetLight});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Street Light Details'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Location: ${streetLight.location}',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10.0),
//             // Larger map view (You can replace this with your preferred map widget)
//             Container(
//               height: 200.0,
//               color: Colors.grey,
//               alignment: Alignment.center,
//               child: Text('Map View'),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Brightness Control',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             Slider(
//               value: streetLight.brightness,
//               min: 0,
//               max: 1,
//               onChanged: (value) {
//                 // Implement logic to update brightness
//               },
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('0'),
//                 Text('1'),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             const Text(
//               'Schedule View',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             // Implement schedule view widget (e.g., calendar or list of schedules)
//             Container(
//               height: 100.0,
//               color: Colors.grey,
//               alignment: Alignment.center,
//               child: Text('Schedule View'),
//             ),
//             SizedBox(height: 20.0),
//             // Additional options for configuring advanced settings
//             const Text(
//               'Advanced Settings',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             // Implement advanced settings options (e.g., motion sensor sensitivity, energy-saving modes)
//             // Add widgets here
//           ],
//         ),
//       ),
//     );
//   }
// }
