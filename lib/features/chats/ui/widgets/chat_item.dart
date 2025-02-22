import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String lastMessage;
  final String time;
  final bool isOnline;

  const ChatItem({
    super.key,
    required this.imageUrl,
    required this.username,
    required this.lastMessage,
    required this.time,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.h,
        left: 10.w,
        right: 10.w,
        bottom: 20.h,
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundImage: NetworkImage(imageUrl),
              ),
              if (isOnline)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2.w),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  lastMessage,
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(time, style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
        ],
      ),
    );
  }
}
