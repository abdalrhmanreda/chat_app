import 'package:chat_app/config/routes/routes_path.dart';
import 'package:chat_app/features/chats/ui/screens/chats_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is used to pass data from one screen to another
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case RoutePath.chatsScreen:
        return MaterialPageRoute(builder: (_) => const ChatsScreen());
    }
  }
}
