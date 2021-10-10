import 'package:flutter/material.dart';
import 'package:html_reader_app/screens/ReaderScreen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Chapter Reader App",
        home: HomePage(),
    ));

var chapterLists = [
  'Ch 1',
  'Ch 2',
  'Ch 3',
  'Ch 4',
  'Ch 5',
  'Ch 6',
  'Ch 7',
  'Ch 8',
  'Ch 9',
];

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter Reader App"),
        backgroundColor: Color(0xFFB4161B),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: chapterLists.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    if (chapterLists[index] == "Ch 1") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(1)),
                      );
                    } else if (chapterLists[index] == "Ch 2") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(2)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 3") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(3)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 4") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(4)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 5") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(5)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 6") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(6)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 7") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(7)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 8") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(8)),
                      );
                    }
                    else if (chapterLists[index] == "Ch 9") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(9)),
                      );
                    }
                  },
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Icon(
                          Icons.book,
                          size: 40,
                        ),
                        SizedBox(height: 5),
                        Text(
                          chapterLists[index],
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
