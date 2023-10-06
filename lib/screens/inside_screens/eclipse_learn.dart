import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Eclipse extends StatefulWidget {
  const Eclipse({super.key});

  @override
  State<Eclipse> createState() => _EclipseState();
}

class _EclipseState extends State<Eclipse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/gif/Theme.gif"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            height: 200.sp,
            width: 300.sp,
            color: Colors.white24,
            child: const ModelViewer(
              backgroundColor: Colors.transparent,
              src: 'assets/3d/solar_eclipse.glb',
              alt: 'The Eclipse',
              ar: true,
              autoRotate: true,
              iosSrc: 'assets/3d/solar_eclipse.glb',
              disableZoom: false,
            ),
          ),
        ],
      ),
    );
  }
}
