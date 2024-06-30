import 'package:flutter/material.dart';
import 'settings_screen.dart'; // Import the settings screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void updateThemeMode(bool isDarkModeEnabled) {
    setState(() {
      _themeMode = isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: SplashScreen(),
      routes: {
        '/settings': (context) => SettingsScreen(updateThemeMode),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to MainScreen after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color
      body: Center(
        child: Image.asset(
          'image/Street light.jpg', // Replace 'download.jpg' with your image asset path
          fit: BoxFit.contain, // Adjust the fit of the image
          width: 200, // Set the width of the image
          height: 200, // Set the height of the image
        ),
      ),
    );
  }
}

class StreetLight {
  final String id;
  final String location;
  bool isOn;
  double brightness;
  List<TimeOfDay> schedules;

  StreetLight({
    required this.id,
    required this.location,
    this.isOn = false,
    this.brightness = 0.5,
    this.schedules = const [],
  });
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<StreetLight> streetLights = [
    StreetLight(id: '1', location: 'App Control'),
    StreetLight(id: '2', location: 'Main'),
    StreetLight(id: '3', location: 'Light 1'),
    StreetLight(id: '4', location: 'Light 2'),
    StreetLight(id: '5', location: 'Light 3'),
    StreetLight(id: '6', location: 'Light 4'),
    StreetLight(id: '7', location: 'Light 5'),
    StreetLight(id: '8', location: 'Light 6'),
    StreetLight(id: '9', location: 'Light 7'),
    StreetLight(id: '10', location: 'Light 8'),
    StreetLight(id: '11', location: 'Light 9'),
    StreetLight(id: '12', location: 'Light 10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.amberAccent,
          title: Row(
            children: [
              const Text(
                'University Road Lights Controller',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: streetLights.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                streetLights[index].location,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: index < 2 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Status: ${streetLights[index].isOn ? 'On' : 'Off'}',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                value: streetLights[index].isOn,
                onChanged: (value) {
                  setState(() {
                    streetLights[index].isOn = value;
                  });
                },
              ),
            );
          },
        ));
  }
}
