import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';


class ReaderScreen extends StatefulWidget {
  final int ChapterID;
  ReaderScreen(this.ChapterID);

  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}


class _ReaderScreenState extends State<ReaderScreen> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFB4161B),
          title: Text("Chapter "+widget.ChapterID.toString()),
          centerTitle: true,
        ),
        body: WebView(
          initialUrl: 'about:blank',
          onWebViewCreated: (WebViewController webviewController){
            _controller = webviewController;
            if(widget.ChapterID == 1)
            _loadHtmlCh1();
            else if(widget.ChapterID == 2)
            _loadHtmlCh2();
            else if(widget.ChapterID == 3)
            _loadHtmlCh3();
            else if(widget.ChapterID == 4)
            _loadHtmlCh4();
            else if(widget.ChapterID == 5)
            _loadHtmlCh5();
            else if(widget.ChapterID == 6)
            _loadHtmlCh6();
            else if(widget.ChapterID == 7)
            _loadHtmlCh7();
            else if(widget.ChapterID == 8)
            _loadHtmlCh8();
            else if(widget.ChapterID == 9)
            _loadHtmlCh9();
          },
        ),

      ),
    );
  }
  _loadHtmlCh1() async {
    String fileText = await rootBundle.loadString("assets/ch1.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());


  }
  _loadHtmlCh2() async {
    String fileText = await rootBundle.loadString("assets/ch2.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh3() async {
    String fileText = await rootBundle.loadString("assets/ch3.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh4() async {
    String fileText = await rootBundle.loadString("assets/ch4.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh5() async {
    String fileText = await rootBundle.loadString("assets/ch5.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh6() async {
    String fileText = await rootBundle.loadString("assets/ch6.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh7() async {
    String fileText = await rootBundle.loadString("assets/ch7.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh8() async {
    String fileText = await rootBundle.loadString("assets/ch8.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
  _loadHtmlCh9() async {
    String fileText = await rootBundle.loadString("assets/ch9.html");
    _controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html',
    ).toString());
  }
}




