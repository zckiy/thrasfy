import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hari 2 - Widget Dasar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WidgetDemo(),
    );
  }
}

class WidgetDemo extends StatefulWidget {
  const WidgetDemo({super.key});

  @override
  State<WidgetDemo> createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hari 2 - Widget Ahli")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Halo, ini contoh Text widget",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.amber,
              child: const Text("Ini Container dengan background kuning"),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.home, size: 40, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.star, size: 40, color: Colors.orange),
              ],
            ),
            const SizedBox(height: 16),
            Image.network(
              "https://bmw.astra.co.id/wp-content/uploads/2023/07/BMW.svg_.png",
              width: 120,
            ),
            const SizedBox(height: 16),
            Text("Counter: $counter", style: const TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text("Tambah Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
