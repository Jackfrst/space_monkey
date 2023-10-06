import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_monkey/screens/inside_screens/eclipse_learn.dart';
import 'package:space_monkey/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(932, 430),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Space Monkey',
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: const Eclipse(),
          );
        });
  }
}
