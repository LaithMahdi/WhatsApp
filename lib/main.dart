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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(children: [
            group(),
            Disc(),
            //Container(child: Text("2"),),
            Statut(),
            Appels(),
          ]),
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title
            backgroundColor: Colors.teal[800],
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            title: Text(widget.title),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  child: Icon(Icons.groups_sharp),
                ),
                Tab(
                  child: Text("Disc"),
                ),
                Tab(
                  child: Text("Statut"),
                ),
                Tab(
                  child: Text("Appels"),
                ),
              ],
            ),
          ),
        ));
  }
}

class Disc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement createState
    return Scaffold(
        body: Column(
          children: [
            ListTile(
              title: Text("Oussema"),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all,
                    size: 20,
                  ),
                  Padding(padding: EdgeInsets.only(right: 3)),
                  Text("Wink laith !!"),
                ],
              ),
              trailing: Text(
                "16:19",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              //isThreeLine: true,
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.teal[700],
        ));
  }
}

class group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            child: Image.asset("assets/bg.jpg", fit: BoxFit.cover),
          ),
          Container(
            child: Text(
              "Présentation des communatés",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            ),
          ),
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: ElevatedButton(
              child: Text("Lanez votre Communaté"),
              onPressed: () {},
              style: ButtonStyle(
                maximumSize: MaterialStateProperty.all(Size.infinite),
                backgroundColor: MaterialStateProperty.all(Colors.teal[700]),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Appels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(children: [
        ListTile(
          title: Text(
            "Créer un lien d'appel",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Partager un lien pour votre appel"),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.teal[700],
            child: Icon(Icons.link),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          width: double.infinity,
          child: Text(
            "Récents",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        ListTile(
          title: Text(
            "Hedii",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_made,
                color: Colors.teal[700],
              ),
              Text(" (3) Hier à 17:03")
            ],
          ),
          trailing: Icon(
            Icons.video_call,
            color: Colors.teal[700],
            size: 30,
          ),
          //isThreeLine: true,
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage("assets/1.jpg"),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call),
        backgroundColor: Colors.teal[700],
      ),
    );
  }
}

class Statut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Mon Statut",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Aujourd'hui à 12:06"),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.teal[700],
              size: 30,
            ),
            //isThreeLine: true,
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.infinity,
            child: Text(
              "Mises à jour vues",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              "Hedii",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Aujourd'hui à 10:00"),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.teal[700],
              size: 30,
            ),
            //isThreeLine: true,
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Ahmed Mnassri",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Hier à 17:06"),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.teal[700],
              size: 30,
            ),
            //isThreeLine: true,
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.https,
                  size: 15,
                  color: Colors.grey,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                Text(
                  "Vos mises à jour de statut sont",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  " chiffrées de bout en bout",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.teal[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
