import 'package:flutter/material.dart';

class CheatDetection extends StatefulWidget {
  const CheatDetection({super.key});

  @override
  State<CheatDetection> createState() => _MyAppState();
}

class _MyAppState extends State<CheatDetection> with WidgetsBindingObserver {
  bool inBackground = false;
  bool isFullScreen = false;
  bool slideOverEnabled = false;
  bool sizeDidChange = false;

  double? initialHeight, initialWidth;

  @override
  void initState() {
    // initialWidth = MediaQuery.of(context).size.width;
    // initialHeight = MediaQuery.of(context).size.height;
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    sizeDidChange = true;
    // print("something has changed");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        setState(() {
          inBackground = false;
        });
        break;
      case AppLifecycleState.inactive:
        setState(() {
          inBackground = true;
        });
        break;
      case AppLifecycleState.paused:
        setState(() {
          inBackground = true;
        });
        break;
      case AppLifecycleState.detached:
        setState(() {
          inBackground = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final screenSize = WidgetsBinding.instance.window.physicalSize;
    // final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    // print(screenSize);
    // print(screenHeight / 2);
    // print(screenWidth / 2);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text("Initial height: $initialHeight",
        //     style: const TextStyle(fontSize: 40, color: Colors.green)),
        // const SizedBox(
        //   height: 10,
        // ),
        Text("Size did change: $sizeDidChange",
            style: const TextStyle(fontSize: 40, color: Colors.green)),
        const SizedBox(
          height: 10,
        ),
        Text("in background: $inBackground",
            style: const TextStyle(fontSize: 40, color: Colors.green)),
        const SizedBox(
          height: 10,
        ),
        Text(
          "height: $height",
          style: const TextStyle(fontSize: 40, color: Colors.green),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "width: $width",
          style: const TextStyle(fontSize: 40, color: Colors.green),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "fullscreen: in progress",
          style: TextStyle(fontSize: 40, color: Colors.red),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "slide over enabled: in progress",
          style: TextStyle(fontSize: 40, color: Colors.red),
        ),
      ],
    ))));
  }
}
