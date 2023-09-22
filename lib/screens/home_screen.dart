import 'package:flutter/material.dart';
import 'package:whats_app_screens/components/chat_tab.dart';
import 'package:whats_app_screens/components/default_camera_tab.dart';




import 'package:whats_app_screens/screens/setting_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

     

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  
}

class _HomeScreenState extends State<HomeScreen> {

  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
          title: Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) {
                return ["Setting"].map((e){
                return PopupMenuItem(child: Text(e),
                onTap: () {
                  Navigator.push
                  (context,
                   MaterialPageRoute
                   (builder: (context) => SettingScreen(),)
                   );
                },
                );
              }).toList();
              },
              offset: Offset(0, 15),
              )

          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab(text: "CALLS",)
            ]),
        ),
        body: TabBarView
        (children: [
          CameraTab(),
          ChatTab(),

          



          Center(child: Text("status"),),
          Center(child: Text("Calls"),),


        ]),
      ),
    );
  }
}