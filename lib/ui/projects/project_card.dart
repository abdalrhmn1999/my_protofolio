import 'package:flutter/material.dart';
import 'package:salem_portfolio/data/projects.dart';
import 'package:salem_portfolio/gen/assets.gen.dart';
import 'package:salem_portfolio/ui/projects/project_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final Project project;
  final int i;

  const ProjectCard({super.key, required this.project , required this.i,});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,

      onTap: () {
        showDialog(
            context: context,
            builder: (context) => ProjectDialog(project: widget.project , i: widget.i,));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).cardColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.i,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: 80,
                      height: 80,
                      child: Image(
                        image: widget.project.photos.first.image,
                        fit: BoxFit.contain,
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // width: 284,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    widget.project.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (widget.project.downloads != null)
                                  Flexible(child: Text(widget.project.downloads!))
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const Text("Stack: "),
                                for (int i = 0;
                                    i < widget.project.stack!.length;
                                    i++)
                                  Text(
                                    widget.project.stack![i] +
                                        (i < widget.project.stack!.length - 1
                                            ? ', '
                                            : ''),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              if (widget.project.googlePlay != null)
                                GestureDetector(
                                  onTap: () {
                                    launchUrl(
                                        Uri.parse(widget.project.googlePlay!));
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Assets.icons.googlePlay.svg()),
                                ),
                              if (widget.project.appStore != null)
                                GestureDetector(
                                  onTap: () {
                                    launchUrl(
                                        Uri.parse(widget.project.appStore!));
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Assets.icons.appStore
                                          .svg(width: 16, height: 16)),
                                ),
                              if (widget.project.github != null)
                                GestureDetector(
                                  onTap: () {
                                    launchUrl(Uri.parse(widget.project.github!));
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Assets.icons.github
                                          .svg(width: 16, height: 16)),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Divider(),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.project.desc,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:salem_portfolio/data/projects.dart';
//
// class ProjectCard extends StatefulWidget {
//   final Project project;
//
//   const ProjectCard({
//     super.key,
//     required this.project,
//   });
//
//   @override
//   State<ProjectCard> createState() => _ProjectCardState();
// }
//
// class _ProjectCardState extends State<ProjectCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       clipBehavior: Clip.hardEdge,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(22),
//           color: Theme.of(context).cardColor),
//       child: Column(
//         children: [
//           Container(
//             height: 160,
//             width: 300,
//             clipBehavior: Clip.hardEdge,
//             decoration: BoxDecoration(),
//             child: Image(image: widget.project.photos.first.image , fit: BoxFit.cover,),
//           ),
//           Container(
//             padding: const EdgeInsets.all(8),
//             width: 300,
//             color: Theme.of(context).cardColor,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.project.name,
//                   style: Theme.of(context).textTheme.headlineSmall,
//                 ),
//                 8.verticalSpace,
//                 Text(
//                   widget.project.desc,
//                   style: Theme.of(context).textTheme.bodySmall,
//                 )
//               ],
//             ),
//           ),
//           const Spacer(),
//         ],
//       ),
//     );
//   }
// }
