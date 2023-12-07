import 'package:flutter/material.dart';
// import 'package:xml2json/xml2json.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

void main() {
  runApp(MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Cat app',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Color.fromARGB(214, 16, 13, 1))),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: const Stack(
            children: [
              Text(
                  'The house cat sits\n and smiles and sings.\n He knows a lot of\n Secret things!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                      color: Color.fromARGB(215, 240, 204, 24))),
              Center(child: Image(image: AssetImage('assets/images/cat.png'))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MaterialButton(
                          height: 40,
                          color: Colors.blue,
                          onPressed: null,
                          child: Text('meow')),
                      MaterialButton(
                          color: Color.fromRGBO(142, 33, 243, 1),
                          height: 40,
                          onPressed: null,
                          child: Text('mrr...')),
                    ],
                  )),
            ],
          ))));
}

// try in parsing
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'RSS News',
//       theme: ThemeData.light(),
//       // home: const MyHomePage(title: 'RSS News'),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final Xml2Json xml2json = Xml2Json();
//   List topstories = [];

//   Future newstopstories() async {
//     final url = Uri.parse('https://feeds.feedburner.com/ndtvnews-top-stories');
//     //   // final url = Uri.parse('https://ria.ru/tag_organization_RSS/');
//     final response = await http.get(url); //xml data
//     xml2json.parse(response.body.toString());
//     var jsondata = xml2json.toGData(); //converted json data
//     var data = json.decode(jsondata);
//     topstories = data['rss']['chanel']['item'];
//     debugPrint('debug: $topstories');
//   }

//   @override
//   Widget build(BuildContext context) {
//     newstopstories();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title,
//             style: const TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'OpenSans',
//                 color: Color.fromARGB(214, 16, 13, 1))),
//         centerTitle: true,
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//         child: FutureBuilder(
//             future: newstopstories(),
//             builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//               return snapshot.connectionState == ConnectionState.waiting
//                   ? const SizedBox(
//                       height: 45,
//                       width: 45,
//                       child: CircularProgressIndicator(
//                         strokeWidth: 2.75,
//                       ))
//                   : SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 16, vertical: 16),
//                             child: Text('Top Post',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 22)),
//                           ),
//                           ListView.builder(
//                               shrinkWrap: true,
//                               controller: ScrollController(),
//                               itemCount: topstories.length,
//                               itemBuilder: (BuildContext context, int index) {
//                                 return Container(
//                                     decoration: const BoxDecoration(
//                                         color: Colors.white,
//                                         boxShadow: [
//                                           BoxShadow(
//                                               blurRadius: 2,
//                                               spreadRadius: 2,
//                                               color: Colors.black12)
//                                         ]),
//                                     child: ListTile(
//                                       horizontalTitleGap: 10,
//                                       minVerticalPadding: 10,
//                                       contentPadding:
//                                           const EdgeInsets.symmetric(
//                                               vertical: 10, horizontal: 10),
//                                       title: Text(
//                                           topstories[index]['title']['__cdata'],
//                                           maxLines: 2,
//                                           overflow: TextOverflow.ellipsis),
//                                       leading: Image.network(
//                                         topstories[index]['media\$content']
//                                             ['url'],
//                                         fit: BoxFit.cover,
//                                         height: 80,
//                                         width: 80,
//                                       ),
//                                     ));
//                               })
//                         ],
//                       ),
//                     );
//             }),
//       ),
//     );
//   }
// }
