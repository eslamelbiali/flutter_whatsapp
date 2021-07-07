import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/calls_screen.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';
import 'package:flutter_whatsapp/pages/chats_screen.dart';
import 'package:flutter_whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
        ),
        elevation: 2,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon:Icon(Icons.camera)),
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: ()=>print('Open Chats'),
      ),
    );
  }
}
