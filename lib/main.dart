// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var icon_icons = [
    Icons.phone,
    Icons.message,
    Icons.contact_page,
  ];
  var icon_texts = [
    'Phone',
    'Message',
    'Contact',
  ];
  var like = [0,0,0];
  var a = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(like[index].toString()),
              title: Text(icon_texts[index]),
              trailing: ElevatedButton(
                child: Text('좋아요'),
                onPressed: () {
                  setState(() {
                    setState(() {
                      like[index]++;
                    });
                  });
                },
              ),
            );
          },
        ),
        bottomNavigationBar: phone_bottom_appbar(),
      ),
    );
  }
}


class phone_bottom_appbar extends StatelessWidget {
  const phone_bottom_appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page)
          ],
        ),
      ),
    );
  }
}




