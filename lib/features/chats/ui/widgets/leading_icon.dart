import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Iconsax.search_normal_outline,
        color: Colors.white,
        size: 22,
      ),
    );
  }
}
