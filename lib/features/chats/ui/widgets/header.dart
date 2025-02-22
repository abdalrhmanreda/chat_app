import 'package:chat_app/assets/assets.dart';
import 'package:chat_app/config/colors/app_colors.dart';
import 'package:chat_app/config/themes/font_weight.dart';
import 'package:chat_app/core/helpers/spacing.dart';
import 'package:chat_app/core/methods/get_responsive_text/responsive_text.dart';
import 'package:chat_app/features/chats/ui/widgets/leading_icon.dart';
import 'package:chat_app/features/chats/ui/widgets/stories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h, left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LeadingIcon(),
              Text(
                AppLocalizations.of(context)!.home,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeightHelper.semiBold,
                  fontSize: getResponsiveFontSize(context, fontSize: 22),
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.kPrimaryColor,
                backgroundImage: AssetImage(
                  Assets.of(context).images.abdalrhman_jpg,
                ),
              ),
            ],
          ),
          Spacing.verticalSpace(20),
          const StoriesList(),
        ],
      ),
    );
  }
}

class ChatsBodyContainer extends StatelessWidget {
  const ChatsBodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: const BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
    );
  }
}
