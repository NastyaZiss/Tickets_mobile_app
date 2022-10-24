import 'package:android_s_fl/utils/app_layout.dart';
import 'package:android_s_fl/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(children: [
          ListView(
          children: [
            Text("Tickets", style: Styles.headLineStyle1,)

          ],
        ),
      ]),
    );
  }
}
