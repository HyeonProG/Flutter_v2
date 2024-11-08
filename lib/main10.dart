import 'package:flutter/material.dart';

void main() {
  runApp(MyApp10());
}

class MyApp10 extends StatelessWidget {
  const MyApp10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ListView 안에 내부적으로 스크롤 뷰가 들어가 있다.
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('1'),
              ),
              title: Text('Item 1'),
              subtitle: Text('Item description'),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('click');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
