import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_millera_go_dev/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                children: const [
                  GetStartedBackground(),
                  GetStartedHeader(),
                ],
              )
            : Row(
                children: const [
                  Expanded(child: GetStartedBackground()),
                  Expanded(child: GetStartedHeader())
                ],
              ),
      ),
    );
  }
}

class GetStartedBackground extends StatelessWidget {
  const GetStartedBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.6,
        widthFactor: 1,
        child: FittedBox(
            fit: BoxFit.cover,
            child: SvgPicture.asset("assets/images/bg_get_started.svg")),
      ),
    );
  }
}

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/images/ic_logo.svg"),
        const Text("Hi Jack, Welcome"),
        const Text("to Silent Mode"),
        const Text(
            "Explore the app, Find some peace of mind to prepare for meditation."),
      ],
    );
  }
}
