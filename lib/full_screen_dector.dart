// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/widgets.dart';

// class FullScreenDetector extends WidgetsBindingObserver {
//   @override
//   void didChangeMetrics() {
//     final screenSize = WidgetsBinding.instance.window.physicalSize;
//     final screenDPI = WidgetsBinding.instance.window.devicePixelRatio;
//     final screenWidthPx = screenSize.width * screenDPI;
//     final screenHeightPx = screenSize.height * screenDPI;
//     final screenWidth = screenSize.width;
//     final screenHeight = screenSize.height;

//     if (screenWidthPx == screenWidth && screenHeightPx == screenHeight) {
//       print("App is running in full screen");
//     } else {
//       print("App is not running in full screen");
//     }
//   }
// }

// class FullScreenDetectorApp extends StatefulWidget {
//   const FullScreenDetectorApp({super.key});

//   @override
//   _FullScreenDetectorAppState createState() => _FullScreenDetectorAppState();
// }

// class _FullScreenDetectorAppState extends State<FullScreenDetectorApp> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(FullScreenDetector());
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(FullScreenDetector());
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
