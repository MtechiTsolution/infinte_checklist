import 'package:flutter/material.dart';

import '../utils/customcolors.dart';

class Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('HOME'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Noting found"

        ),
      ),
    );
  }
}
