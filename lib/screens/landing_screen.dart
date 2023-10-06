import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_monkey/screens/inside_screens/eclipse_learn.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/gif/Theme.gif"), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 65.sp,
              top: 70.sp,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 52.sp,
                    child: Image.asset("assets/image/Play.png"),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Eclipse(),
                        ),
                      );
                    },
                    child: Container(
                      height: 52.sp,
                      child: Image.asset("assets/image/Learn.png"),
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  Container(
                    height: 52.sp,
                    child: Image.asset("assets/image/Online.png"),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  Container(
                    height: 52.sp,
                    child: Image.asset("assets/image/Options.png"),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  GestureDetector(
                    onTap: (){
                      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    },
                    child: Container(
                      height: 52.sp,
                      child: Image.asset("assets/image/Exit.png"),
                    ),
                  ),
                ],
              )),
          Positioned(
              right: 52.sp,
              bottom: 40.sp,
              child: Container(
                height: 38.sp,
                child: Image.asset("assets/image/Bottom_menu.png"),
              )),
          Positioned(
            right: 52.sp,
            top: 40.sp,
            child: Container(
              height: 68.sp,
              child: Image.asset("assets/image/Logo.png"),
            ),
          ),
          Positioned(
            top: 120.sp,
            right:25.sp,
            child: Container(
              padding: EdgeInsets.all(20.sp),
              height: 200.sp,
              width: 360.sp,
              child: const ModelViewer(
                backgroundColor: Colors.transparent,
                src: 'assets/3d/moon.glb',
                alt: 'The moon',
                ar: true,
                autoRotate: true,
                iosSrc: 'assets/3d/moon.glb',
                disableZoom: true,
              ),
            ),
          ),
        ],
      ), // Foreground widget here
    );
  }
}
