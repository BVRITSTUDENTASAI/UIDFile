import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int setStateCount = 0;

  @override
  Widget build(BuildContext context) {
    int providerCount = context.watch<CounterProvider>().count;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // setState
              Text("setState: $setStateCount"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    setStateCount++;
                  });
                },
                child: const Text("setState +"),
              ),

              const SizedBox(height: 30),

              // Provider
              Text("Provider: $providerCount"),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                child: const Text("Provider +"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}