import 'package:flutter/material.dart';
import 'package:meditation_millera_go_dev/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: const [
            Text("Hi Jack, Welcome"),
            Text("to Silent Mode"),
            Text("Explore the app, Find some peace of mind to prepare for meditation."),
          ],
        ),
      ),
    );
  }
}

