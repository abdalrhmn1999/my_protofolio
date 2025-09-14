import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../gen/assets.gen.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  List<String> title = ['Whatsapp', 'Email', 'LinkedIn'];
  List<String> links = [
    "https://wa.me/+963937768488",
    'mailto://abdalrhmnnassan100@gmail.com',
    'https://www.linkedin.com/in/abdalrhmnnassan/'
  ];
  List<Widget> icons = [
    Assets.icons.whatsapp.svg(width: 52, height: 52),
    Assets.icons.email.svg(width: 52, height: 52),
    // Assets.icons.phonePng.image(width: 52, height: 52 , ),
    // Assets.icons.github.svg(width: 52, height: 52),
    Assets.icons.linkedIn.svg(width: 52, height: 52),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contact Me',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 49.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Let\'s build something professional',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 140.h,
          ),
          SizedBox(
            width: min(MediaQuery.of(context).size.width * 0.9, 650),
            child: SingleChildScrollView(
              child: Wrap(
                runSpacing: 16,
                spacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < title.length; i++)
                    GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(links[i]));
                      },
                      child: SizedBox(
                        width: 80,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [icons[i], const Spacer(), Text(title[i])],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
