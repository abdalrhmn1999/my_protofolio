import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salem_portfolio/ui/eperience/experience.dart';
import 'package:salem_portfolio/ui/eperience/experience_card.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              const Text(
                "My Experience",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 49.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'A days of building a professional experience !',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: myExperience.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ExperienceCard(experience: myExperience[index]),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 32,),

            ],
          ),
        ),
      ),
    );
  }
}
