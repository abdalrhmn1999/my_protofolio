import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salem_portfolio/data/projects.dart';
import 'package:salem_portfolio/ui/projects/project_card.dart';

class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({super.key});

  @override
  State<MyProjectsPage> createState() => _MyProjectsPageState();
}

class _MyProjectsPageState extends State<MyProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            Text(
              'Projects',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 49.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Things I’ve built so far',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),

            SizedBox(
              // width: 1200,
              child: SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      mainAxisExtent: 230,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16
                    ),
                    itemCount: myProjects.length,
                    itemBuilder: (context, index) {
                      return ProjectCard(
                        i: index,
                        project: myProjects[index],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
