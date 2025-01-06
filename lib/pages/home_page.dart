import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home Page"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: Column(
          children: [
            // Drawer Header
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue[400],
                    backgroundImage: AssetImage("assets/images/flutter_logo.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Avatar", style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),

            // Counter Page
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text("Counter Page", style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/counterpage');
              },
            ),

            // Background Color Page
            ListTile(
              leading: Icon(Icons.color_lens),
              title: Text("Background Color Page", style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/backgroundcolorpage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "This is Just a pratice flutter app",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
