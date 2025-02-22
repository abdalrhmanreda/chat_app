import 'package:chat_app/features/chats/ui/widgets/stories.dart';
import 'package:chat_app/features/chats/ui/widgets/story_item.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(stories.length, (index) {
          return StoryItem(
            imageUrl: stories[index],
            username: 'Abdalrhman',
            isMyStatus: index == 0,
          );
        }),
      ),
    );
  }
}
