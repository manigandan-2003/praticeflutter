import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variables
  int _counter = 0;

  // methods
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // UI (Widgets)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Counter Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter: ",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$_counter",
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[700]),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10)),
                    ),
                    onPressed: _incrementCounter,
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[700]),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10)),
                    ),
                    onPressed: _decrementCounter,
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 90, right: 90, top: 15, bottom: 15))),
                  onPressed: () => setState(() {
                        _counter = 0;
                      }),
                  child: Text("Reset")),
            )
          ],
        ),
      ),
    );
  }
}
