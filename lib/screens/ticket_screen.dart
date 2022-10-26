import 'package:android_s_fl/screens/ticket_tabs.dart';
import 'package:android_s_fl/screens/ticket_view.dart';
import 'package:android_s_fl/utils/app_info_list.dart';
import 'package:android_s_fl/utils/app_layout.dart';
import 'package:android_s_fl/utils/app_styles.dart';
import 'package:android_s_fl/widgets/column_layuot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bdColor,
      body: Stack(children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
            children: [
                Gap(AppLayout.getHeight(40)),
                Text("Tickets", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
                Gap(AppLayout.getHeight(20)),
                AppTicketTabs(firstTab: "Upcoming", secondTab: "Previos"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(ticket: ticketList[0], isColor: true,),
                ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 364869",
                          secondText: "passport",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ]
      ),
    );
  }
}
