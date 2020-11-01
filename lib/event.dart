import 'package:flutter/material.dart';

class EventFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffff7d00),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {})
            ],
            title: Text("Political Updates"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.sort),
                  text: "filter",
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chat",
                )
              ],
            ),
          ),
          body: Column(
            children:<Widget> [
              Card(
                child: Container(
                  height: 300,
                  
                  child: Column(children: <Widget>[
                    ListTile(leading:CircleAvatar(),
                    title: Text("PM Narendra Modi"),
                    subtitle: Text("Sun Nov 01 2020 07.00.00"),
                    ),
                    Expanded(child: Container(color: Colors.blue,)),
                    Row(children:<Widget> [
                      Row(children: <Widget>[
                        
                      ],)
                    ],)
                  ],),
            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
