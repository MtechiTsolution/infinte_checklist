import 'package:flutter/material.dart';

import '../utils/customcolors.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.backgrounds,
      appBar: AppBar(
        backgroundColor: CustomColors.header,
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Handle the click action for "Subscription"
              },
              child: Text(
                'Subscription',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Full version',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Divider(height: 5,),
            SizedBox(height: 10,),
            Text('About', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Feedback',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text('demoabc@gmail.com',style: TextStyle(color: Colors.blue),),
              ],
            ),
            SizedBox(height: 10),
            Divider(height: 5,),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Version',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text('1.0'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                // Handle the click action for "WhatsApp"
              },
              icon: Image.asset(
                'assets/send.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                // Handle the click action for "WhatsApp"
              },
              icon: Image.asset(
                'assets/instagram.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),


            IconButton(
              onPressed: () {
                // Handle the click action for "WhatsApp"
              },
              icon: Image.asset(
                'assets/fb.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                // Handle the click action for "WhatsApp"
              },
              icon: Image.asset(
                'assets/whatsapp.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
