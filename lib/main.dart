import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SafeArea(
        child: Scaffold(
        body:WebView(
                initialUrl: 'https://amdhjs.fhmcode.com/backoffice?type=webview',
                debuggingEnabled: false,
                allowsInlineMediaPlayback: true,
                initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
                javascriptMode: JavascriptMode.unrestricted,
              )
          ),
      ));
  }
}



