import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Phone Dialer App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Laxman", "Himal", "Kapil", "Sandeep"];
  var phoneNumber = ["980374707", "9810312404", "9842781897", "9818289764"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Dialer'),
        centerTitle: true,
        backgroundColor: Colors.indigo[700],
      ),
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  launch("tel://${phoneNumber[index]}");
                },
              ),
              title: Text(contactList[index]),
              subtitle: Text(phoneNumber[index]),
            );
          }),
    );
  }
}
