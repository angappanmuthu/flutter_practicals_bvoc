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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<String> imageUrls = [
    "https://randomuser.me/api/portraits/men/11.jpg",
    "https://randomuser.me/api/portraits/women/60.jpg",
    "https://randomuser.me/api/portraits/men/13.jpg",
    "https://randomuser.me/api/portraits/women/17.jpg",
    "https://randomuser.me/api/portraits/women/52.jpg",
    "https://randomuser.me/api/portraits/women/33.jpg",
    "https://randomuser.me/api/portraits/women/23.jpg",
    "https://randomuser.me/api/portraits/men/03.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xFF128C7E),
      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp Clone"),
        backgroundColor: Color(0xFF128C7E),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyItem(imageUrls[0], "Kriss Kawa"),
                  storyItem(imageUrls[1], "Emma Jean"),
                  storyItem(imageUrls[2], "Marcus"),
                  storyItem(imageUrls[3], "Lillie"),
                  storyItem(imageUrls[4], "Ann Ruso"),
                  storyItem(imageUrls[5], "Christein kujo"),
                  storyItem(imageUrls[6], "Watson"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    conversation(imageUrls[0], "Kriss Kawa", "Hows it been?",
                        "7 am", false),
                    conversation(imageUrls[1], "Emma Jean", "Where are you?",
                        "5 pm", false),
                    conversation(
                        imageUrls[2], "Marcus", "Its fine", "yesterday", true),
                    conversation(
                        imageUrls[3], "Lillie", "Okay", "yesterday", true),
                    conversation(imageUrls[5], "Ann Ruso", "Take care",
                        "15th Jan", false),
                    conversation(imageUrls[4], "Christein kujo",
                        "Ok will be there.", "13th Jan", true),
                    conversation(imageUrls[6], "Watson", "I am going.",
                        "10th Jan", true),
                    conversation(imageUrls[6], "Watson", "I am going.",
                        "10th Jan", true),
                    conversation(imageUrls[4], "Christein kujo",
                        "Ok will be there.", "13th Jan", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget conversation(
    String url, String name, String message, String time, bool messageSeen) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 25.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(time),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(message)),
                    if (messageSeen)
                      Icon(
                        Icons.check_circle,
                        size: 16.0,
                        color: Colors.green,
                      ),
                    if (!messageSeen)
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                        size: 16.0,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget storyItem(String url, String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 12.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 30.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
