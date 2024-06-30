// import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LightControlPage(),
//     );
//   }
// }

// class LightControlPage extends StatefulWidget {
//   @override
//   _LightControlPageState createState() => _LightControlPageState();
// }

// class _LightControlPageState extends State<LightControlPage> {
//   BluetoothDevice? device; // The Bluetooth device to connect to

//   // Method to send commands to the Arduino via Bluetooth
//   void sendCommand(bool lightState) {
//     // Logic to send commands to the Arduino
//     // You'll need to implement this based on your communication protocol
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Light Control'),
//       ),
//       body: ListView.builder(
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text('Light ${index + 1}'),
//             trailing: Switch(
//               value:
//                   false, // Replace with the boolean variable representing the light
//               onChanged: (value) {
//                 setState(() {
//                   // Update the boolean variable representing the light
//                   sendCommand(value); // Send command to Arduino
//                 });
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
