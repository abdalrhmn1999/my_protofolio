import 'package:flutter/material.dart';
import 'package:salem_portfolio/ui/eperience/experience.dart';

class ExperienceCard extends StatefulWidget {
  final Experience experience;

  const ExperienceCard({
    super.key,
    required this.experience,
  });

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.experience.period,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
              "${widget.experience.title} | ${widget.experience.company} | ${widget.experience.location}"),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                for (var e in widget.experience.experienceDescs) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.circle,size: 8,),
                          const SizedBox(width: 4,),
                          Text(
                            e.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 8,
                      // ),
                      // for (var k in e.descs) ...[
                      //   Column(
                      //     children: [
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           const Text(' > '),
                      //           const SizedBox(width: 8,),
                      //           Expanded(child: Text(k))
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 8,
                      //       ),
                      //     ],
                      //   )
                      // ],
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  )
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}
