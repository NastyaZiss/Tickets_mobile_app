import 'package:android_s_fl/screens/hotel_screen.dart';
import 'package:android_s_fl/screens/ticket_view.dart';
import 'package:android_s_fl/utils/app_info_list.dart';
import 'package:android_s_fl/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bdColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning", style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text("Book Tickets", style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                          image: AssetImage(
                              "assets/img/airplane.jpg"
                          ),
                      ),
                    ),
                  ),
                ],

                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(10),
                    color: const  Color(0xfff4f6fd),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),),
                      Text("Search",
                        style: Styles.headLineStyle4,),
                    ],
                  ),
                ),
                Gap(40),
                const AppDoubleTextWidget(bigText: "Upcoming Flight", smallText: "View all"),
              ],

            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
            const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel,)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
