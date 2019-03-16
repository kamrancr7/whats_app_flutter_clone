import 'package:flutter/material.dart';
import 'package:whats_app/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ChatModel dummyDate = ChatModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Demo',
      theme: ThemeData(
        //primarySwatch: Colors.green,
        primaryColor: Color(0xff075E54),
        accentColor:  Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: homePage(context),
    );
  }

  Widget homePage(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: new NetworkImage(
                    "https://www.foxsportsasia.com/tachyon/2019/02/cristiano-ronaldo.jpg?fit=1920,1080"),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text("WhatsApp Home"),
            ],
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.message)),
            Tab(icon: Icon(Icons.phone)),
            Tab(icon: Icon(Icons.people)),
          ]),
        ),
        body: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, i) => new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                    ),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          dummyData[i].name,
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          dummyData[i].time,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                      ],
                    ),
                    subtitle: new Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: new Row(
                          children: <Widget>[
                            Icon(
                              Icons.check,
                              color: Colors.grey,
                              size: 16.0,
                            ),
                            Text(
                              dummyData[i].message,
                              style: new TextStyle(
                                  color: Colors.grey, fontSize: 15.0),
                            ),
                          ],
                        )),
                  ),
                  new Divider(
                    height: 10.0,
                  ),
                ],
              ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff075E54),
          onPressed: () {},
          tooltip: 'Test',
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
    );
  }
}
