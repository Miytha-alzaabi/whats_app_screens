

import 'package:flutter/material.dart';
import 'package:whats_app_screens/model/chat_model.dart';
import 'package:whats_app_screens/screens/setting_screen.dart';

import '../components/default_camera_tab.dart';


class ChatScreen extends StatefulWidget {
   ChatScreen({super.key, required this.chat});
  ChatModels chat;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        leadingWidth: 70,
        titleSpacing: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.arrow_back, size: 24,),
              CircleAvatar(backgroundImage: NetworkImage(widget.chat.image!),radius: 20,)
            ],),
          ),
          title: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chat.title!),
                Text("Online", style: TextStyle(fontSize: 13),)
              ],
            ),
          ),
          actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
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
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          children: [
            ListView(

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width -60,
                    child: Card(
                      margin: EdgeInsets.only(left: 2,right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(25)),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        // keyboardType: TextInputType.multiline,
                        // maxLines: 5,
                        // minLines: 1,
                        decoration: InputDecoration(
                          hintText: "Message",
                          prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined)),
                          contentPadding: EdgeInsets.all(5),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.attach_file)),
                              IconButton(onPressed: (){
                                Navigator.push(
                                  context,
                                   MaterialPageRoute(
                                    builder: (context) => CameraTab(),));
                              }, icon: Icon(Icons.camera_alt)),
                            ],
                          )

                        ),
                      ))),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal.shade800,
                      radius: 25,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.white,)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}