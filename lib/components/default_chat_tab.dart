

import 'package:flutter/material.dart';
import 'package:whats_app_screens/model/chat_model.dart';
import 'package:whats_app_screens/screens/chat_screen.dart';

class DefaltChatTab extends StatelessWidget {
   DefaltChatTab({super.key, required this.chat});

  ChatModels chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
       onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(chat: chat),)
                      );
                },
      leading: CircleAvatar(backgroundImage: NetworkImage(chat.image!),radius: 30),
      title: Text(chat.title!, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      subtitle: Text(chat.subtitle!, style: TextStyle(fontSize: 13),),
      trailing: Text(chat.trailing!),
    );
  }
}