import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:muhsinabdilcv/screens/about_page/about_page.dart';
import 'package:muhsinabdilcv/utilities/screen_size.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../models/header_model.dart';

import '../../constants/text_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HeaderModel> headerModelList = [
    HeaderModel(text: home_page, onPressed: () {}, icon: Icons.home_outlined),
    HeaderModel(
        text: about_page, onPressed: () {}, icon: Icons.person_outlined),
    HeaderModel(
        text: services_page, onPressed: () {}, icon: Icons.person_outlined),
    HeaderModel(
        text: experiences_page, onPressed: () {}, icon: Icons.person_outlined),
    HeaderModel(
        text: projects_page, onPressed: () {}, icon: Icons.person_outlined),
    HeaderModel(
        text: contact_page, onPressed: () {}, icon: Icons.person_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> headerWidgets = headerModelList
        .map((e) => CustomMenuButton(
            icon: e.icon!, text: e.text!, onPressed: e.onPressed!))
        .toList();
    final String title;
    return Scaffold(
      appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme?.copyWith(color: Colors.white),
          leading: const CircleAvatar(
            backgroundColor: Colors.purple,
            child: CircleAvatar(
              child: Icon(Icons.cast_for_education_outlined),
              radius: 25,
            ),
          ),
          title: Text("title", // 'welcome-text'.tr(),
                  style: Theme.of(context).textTheme.bodyLarge)
              .tr(),
          actions: ResponsiveBreakpoints.of(context).isDesktop
              ? [...headerWidgets]
              : [
                  /*  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu_outlined,
                      color: Colors.white,
                    ),
                  ) */
                ]),
      endDrawer: ResponsiveBreakpoints.of(context).isMobile
          ? Drawer(
              backgroundColor: Color.fromARGB(255, 45, 24, 83),
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                      height:
                          ScreenSize(context: context).size().height * 0.15),
                  ...headerWidgets,
                ],
              ),
            )
          : null,
      body: AboutPage(),
    );
  }
}

class CustomMenuButton extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback onPressed;

  CustomMenuButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: onPressed,
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
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(text, style: Theme.of(context).textTheme.bodyMedium).tr(),
            ],
          )),
    );
  }
}
