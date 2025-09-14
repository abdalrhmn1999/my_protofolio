import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onNav;

  const NavBar({
    super.key,
    required this.index,
    required this.onNav,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int i = 0;

  @override
  void initState() {
    super.initState();
    i = widget.index;
  }

  @override
  void didUpdateWidget(covariant NavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.index != i) {
      setState(() {
        i = widget.index;
      });
    }
  }

  List<String> titles = [
    "Home",
    'Experience',
    "Projects",
    "TechStack",
    "Contact me",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < titles.length; i++)
            ...[
              GestureDetector(
                onTap: () {
                  setState(() {
                    this.i = i;
                  });
                  widget.onNav.call(i);
                },
                child: Center(
                  child: Text(
                    titles[i],
                    style: TextStyle(
                        decoration: this.i == i ? TextDecoration.underline : null,
                        color:
                        this.i == i ? Theme.of(context).primaryColor : null),
                  ),
                ),
              ),
               SizedBox(width: i == titles.length - 1 ? 0 : 67.w,),
              // Container(width: 1 , height: 32, color: Theme.of(context).dividerColor,),
              // const SizedBox(width: 2,),
            ],
        ],
      ),
    );
  }
}
