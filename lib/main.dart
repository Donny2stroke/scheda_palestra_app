import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'PROGRAMMA DI ALLENAMENTO'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            widget.title, 
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 0, 126, 63), width:3)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 55.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://www.my-personaltrainer.it/2020/10/13/grande-pettorale-orig.jpeg'),
                      radius: 50.0,
                    ),
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("SCHEDA A"),
					  SizedBox(height: 5),
                      Text("PETTO E TRICIPITI")
                    ],
                  ),
                ]
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 0, 126, 63), width:3)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 55.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://www.my-personaltrainer.it/2020/10/13/grande-pettorale-orig.jpeg'),
                      radius: 50.0,
                    ),
                  ),
				  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("SCHEDA B"),
					  SizedBox(height: 5),
                      Text("DORSO E SPALLE")
                    ],
                  ),
                ]
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 0, 126, 63), width:3)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 55.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://www.my-personaltrainer.it/2020/10/13/grande-pettorale-orig.jpeg'),
                      radius: 50.0,
                    ),
                  ),
				  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("SCHEDA C"),
					  SizedBox(height: 5),
                      Text("GAMBE E BICIPITI")
                    ],
                  ),
                ]
              ),
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
