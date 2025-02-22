import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String username;
  final Color borderColor;
  final bool isMyStatus;

  const StoryItem({
    super.key,
    required this.imageUrl,
    required this.username,
    this.borderColor = Colors.grey,
    this.isMyStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient:
                      isMyStatus
                          ? LinearGradient(
                            colors: [Colors.grey.shade800, Colors.black],
                          )
                          : null,
                  border: Border.all(color: borderColor, width: 1),
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
              if (isMyStatus)
                Positioned(
                  right: 4,
                  bottom: 4,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            username,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
