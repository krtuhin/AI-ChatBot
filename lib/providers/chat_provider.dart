import 'package:chat_gpt/models/chat_model.dart';
import 'package:chat_gpt/services/api_services.dart';
import 'package:flutter/material.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];

  List<ChatModel> get getChatList {
    return chatList;
  }

  void addUserMessage(String message) {
    chatList.add(ChatModel(msg: message, chatIndex: 0));
    notifyListeners();
  }

  Future<void> addAllMessage(String message, String modelId) async {
    chatList.addAll(
      await ApiService.sendMessage(
        message: message,
        modelId: modelId,
      ),
    );
    notifyListeners();
  }
}
