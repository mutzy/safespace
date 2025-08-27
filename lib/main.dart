import 'package:flutter/material.dart';

void main() => runApp(BuniApp());

class BuniApp extends StatelessWidget {
  const BuniApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buni App',
      home: HomeScreen(),
      theme: ThemeData.dark(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
            print(context.widget.key);
          },
        ),
        title: Text('Buni App'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Welcome to Buni App!',
                style: TextStyle(fontFamily: 'Urbanist'),
              ),
            ),
            SizedBox(height: 20),
            StatefulWidgetExample(),
          ],
        ),
      ),
    );
  }
}

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});

  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter: $_counter'),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
