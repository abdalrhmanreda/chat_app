class ChatItemModel {
  final String name;
  final String message;
  final String time;
  final String imageUrl;
  final bool isOnline;

  ChatItemModel({
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
    this.isOnline = false,
  });
}
