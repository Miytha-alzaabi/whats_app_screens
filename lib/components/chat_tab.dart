import 'package:flutter/material.dart';
import 'package:whats_app_screens/components/default_chat_tab.dart';
import 'package:whats_app_screens/model/chat_model.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {

  List<ChatModels> chats = [
    ChatModels(title: "programmer", subtitle: "Hi programmer", trailing: "12:15", image: "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg"),
    ChatModels(title: "programmer", subtitle: "Hi ", trailing: "12:15", image: "https://images.freeimages.com/images/large-previews/34e/williamstown-1057646.jpg?fmt=webp&w=350"),
    ChatModels(title: "programmer", subtitle: "Hi programmer", trailing: "12:15", image: "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
    ChatModels(title: "programmer", subtitle: "Hi ", trailing: "12:15", image: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
    ChatModels(title: "programmer", subtitle: "Hi programmer", trailing: "12:15", image: "https://images.pexels.com/photos/1353126/pexels-photo-1353126.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    ChatModels(title: "programmer", subtitle: "Hi ", trailing: "12:15", image: "https://images.freeimages.com/images/large-previews/34e/williamstown-1057646.jpg?fmt=webp&w=350"),
    ChatModels(title: "programmer", subtitle: "Hi programmer", trailing: "12:15", image: "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg"),
    ChatModels(title: "programmer", subtitle: "Hi ", trailing: "12:15", image: "https://images.freeimages.com/images/large-previews/34e/williamstown-1057646.jpg?fmt=webp&w=350"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.chat)),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => DefaltChatTab(
          chat: chats[index]
          )
        
        
          //DefaltChatTab()
        
      ),
    );
  }
}