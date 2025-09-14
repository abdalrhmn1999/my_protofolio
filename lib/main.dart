import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salem_portfolio/theme.dart';
import 'package:salem_portfolio/ui/main_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1600, 3630),
      builder: (context, child) {
        return MaterialApp(
          onGenerateTitle: (context) => 'Abdalrhmn Nassan',
          themeMode: ThemeMode.dark,
          darkTheme: AppTheme().getTheme(),
          home: child,
          builder: (context, child) {
            return MediaQuery(data: MediaQuery.of(context), child: child!);
          },
          debugShowCheckedModeBanner: false,
        );
      },
      child: const MainScreen(),
    );
  }
}
