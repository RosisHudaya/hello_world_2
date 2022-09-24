import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            backgroundColor: Colors.red,
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('BERITA TERKINI'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('PERTANDINGAN HARI INI'),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 202, 141, 212))),
                child: Column(
                  children: [
                    Image.network(
                        'https://img.sportstars.id//2022/01/4RXj47/master_5L25J1S3FP_2139_diego_costa.jpg'),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Costa Mendekat Ke Palmeiras',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(10.0),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 400,
                        color: const Color.fromARGB(255, 175, 89, 189),
                        child: const Text(
                          'Transfer',
                          style: TextStyle(fontSize: 15),
                        )),
                  ],
                ),
              ),
              beritaCard(),
              beritaCard(),
              beritaCard(),
              beritaCard(),
              beritaCard(),
              beritaCard(),
              beritaCard(),
            ],
          )),
    );
  }

  Container beritaCard() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blueGrey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Colors.blueGrey),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image.network(
                    'https://media.istockphoto.com/photos/soccer-players-celebrating-success-by-lifting-a-teammate-on-shoulders-picture-id1066619566?k=20&m=1066619566&s=612x612&w=0&h=YC63TapTDZReGmdszKynshGnzuJEiVv0fL6_J9U7Ndo=',
                    fit: BoxFit.fill,
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                        'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Barcelona Feb 13, 2022'),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
