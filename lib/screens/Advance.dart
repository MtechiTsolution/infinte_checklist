import 'package:flutter/material.dart';

import '../utils/customcolors.dart';

class Advance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('ADVANCE'),
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
