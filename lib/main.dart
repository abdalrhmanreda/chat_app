import 'package:chat_app/chat_app.dart';
import 'package:chat_app/config/colors/app_colors.dart';
import 'package:chat_app/config/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.kPrimaryColor, // لون الخلفية
      statusBarIconBrightness:
          Brightness.light, // لون الأيقونات (مناسبة للخلفيات الداكنة)
    ),
  );
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChatApp(initRoute: '/', appRouter: AppRouter()));
}
