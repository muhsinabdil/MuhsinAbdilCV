import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:muhsinabdilcv/utilities/screen_size.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String title;
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.purple,
          child: CircleAvatar(
            child: Icon(Icons.factory),
            radius: 25,
          ),
        ),
        title: Text(
          "title", // 'welcome-text'.tr(),
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ).tr(),
        actions: [
          ResponsiveBreakpoints.of(context).isDesktop
              ? const CustomMenuButton()
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                  ),
                ),
        ],
      ),
    );
  }
}

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.0),
            side: BorderSide(color: Colors.purple),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text("Ana Sayfa"),
          ],
        ));
  }
}
