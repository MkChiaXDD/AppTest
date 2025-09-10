import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // wait 2 seconds, then navigate
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(title: 'Home Page'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "🚀 Splash Screen",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //Main Body
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "  HomePage\u00A0\u00A0",
                style: TextStyle(
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 20), //Gap between buttons
              //Tasks page button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaskPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,       // button background color
                  foregroundColor: Colors.white,      // text (and icon) color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 20),    // size of the button
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold), // text style
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),    // rounded corners
                  ),
                  elevation: 0,                       // shadow
                ),
                child: const Text("Tasks"),
              )
              ,SizedBox(height: 20), //Gap between buttons
              //Profile Page Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(title: "Profile"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,       // button background color
                  foregroundColor: Colors.white,      // text (and icon) color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 20),    // size of the button
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold), // text style
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),    // rounded corners
                  ),
                  elevation: 0,                       // shadow
                ),
                child: const Text("Profile"),
              )
              ,SizedBox(height: 20), //Gap between buttons

              //Settings Page Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(title: "Settings"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,       // button background color
                  foregroundColor: Colors.white,      // text (and icon) color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20),    // size of the button
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold), // text style
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),    // rounded corners
                  ),
                  elevation: 0,                       // shadow
                ),
                child: const Text("Settings"),
              )
              ,SizedBox(height: 20), //Gap between buttons
            ],
          ),
        ),
      ),
    );
  }
}
//END OF HOMEPAGE CODE

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // goes back to previous page
          },
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text (
              "Toggle Button SFX",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 10),
            Switch(
              value: _isOn,
              onChanged: (bool value) {
                setState(() {
                  _isOn = value;
                });
              },
            ),
          ],
        )
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // goes back to previous page
          },
        ),
        title: Text(widget.title),
      ),
      body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text (
                "Streak : 0",
                style: TextStyle(fontSize: 16),
              ),
              const Text (
                "Points: 0",
                style: TextStyle(fontSize: 16),
              ),
              const Text (
                "Challenges Completed : 0",
                style: TextStyle(fontSize: 16),
              ),
            ],
          )
      ),
    );
  }
}

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks page placeholder"),
      ),
      body: const Center(
        child: Text(
          "This page is empty",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}

