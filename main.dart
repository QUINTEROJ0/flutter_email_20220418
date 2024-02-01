import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListTileExample(),
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  _ListTileExampleState createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mailboxes'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.cloud_queue),
                  title: Text('Cloud Drives'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.system_security_update_good_outlined),
                  title: Text('On My iPhone'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.add_to_drive),
                  title: Text('Drive'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.wb_cloudy_sharp),
                  title: Text('pCloud'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.delete_rounded),
                  title: Text('Recently Deleted'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              
            ],
          ),
          
        ],
      ),
    );
  }
}


