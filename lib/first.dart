import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreeen extends StatefulWidget {
  const SecondScreeen({super.key});

  @override
  State<SecondScreeen> createState() => _SecondScreeenState();
}

class _SecondScreeenState extends State<SecondScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("new screen"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://flutter.dev"));
                },
                child: Text("url")),
            ElevatedButton(
                onPressed: () {
                  launch("tel:- +91 424535351");
                },
                child: Text("make a phone call")),
            ElevatedButton(
                onPressed: () {
                  launch("tel:- +91 424535351");
                },
                child: Text("send a sms")),
            
          ],
        ));
  }
}
