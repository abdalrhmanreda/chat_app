import 'package:chat_app/config/colors/app_colors.dart';
import 'package:chat_app/features/chats/ui/widgets/chat_item.dart';
import 'package:chat_app/features/chats/ui/widgets/header.dart';
import 'package:chat_app/features/chats/ui/widgets/stories.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.kPrimaryColor,
            expandedHeight: 250.h,
            flexibleSpace: const FlexibleSpaceBar(background: HeaderSection()),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.h),
              child: const ChatsBodyContainer(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ChatItem(
                imageUrl: stories[index],
                username: chatItems[index].name,
                lastMessage: chatItems[index].message,
                time: chatItems[index].time,
                isOnline: chatItems[index].isOnline,
              );
            }, childCount: chatItems.length),
          ),
        ],
      ),
    );
  }
}
