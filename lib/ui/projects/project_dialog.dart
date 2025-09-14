import 'package:flutter/material.dart';
import 'package:salem_portfolio/data/projects.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../gen/assets.gen.dart';

class ProjectDialog extends StatefulWidget {
  final Project project;
  final int i;
  const ProjectDialog({super.key , required this.project,required this.i,});

  @override
  State<ProjectDialog> createState() => _ProjectDialogState();
}

class _ProjectDialogState extends State<ProjectDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6)
      ),
      insetPadding: EdgeInsets.all(8),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: const Row(
        children: [
          Expanded(child: Text('Project')),
          CloseButton()
        ],
      ),
      content: Container(
        width: 800,
        constraints: const BoxConstraints(minHeight: 300),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: widget.i,
                transitionOnUserGestures: true,
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
              const Divider(),
              Text(
                widget.project.desc,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
