import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Lottie.network(
          "https://lottie.host/048cc935-fe74-44c3-9e55-2c49f8e61741/eAMCxSOCV7.lottie",
          controller: _controller,
        ),
        const Center(
          child: Text("M u Z i K a"),
        )
      ],
    ));
  }
}
