import 'package:flutter/material.dart';

class BackgroundColorPage extends StatefulWidget {
  const BackgroundColorPage({super.key});

  @override
  _BackgroundColorPageState createState() => _BackgroundColorPageState();
}

class _BackgroundColorPageState extends State<BackgroundColorPage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor(colorName) {
    setState(() {
      switch (colorName) {
        case "Red":
          _backgroundColor = Colors.red;
          break;
        case "Green":
          _backgroundColor = Colors.green;

          break;
        case "Blue":
          _backgroundColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Background Color Page"),
        centerTitle: true,
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is a Background Color Page",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                          onPressed: () => _changeBackgroundColor("Red"),
                          child: Text("Red",
                              style: TextStyle(color: Colors.white))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          onPressed: () => _changeBackgroundColor("Green"),
                          child: Text("Green",
                              style: TextStyle(color: Colors.white))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () => _changeBackgroundColor("Blue"),
                          child: Text("Blue",
                              style: TextStyle(color: Colors.white))),
                    ),
                  ], // Row Children
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () => setState(() {
                          _backgroundColor = Colors.white;
                        }),
                    child: Text(
                      "Back to White",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ], // Column Children
          ),
        ),
      ),
    );
  }
}