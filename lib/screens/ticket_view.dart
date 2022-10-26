import 'package:android_s_fl/utils/app_layout.dart';
import 'package:android_s_fl/utils/app_info_list.dart';
import 'package:android_s_fl/utils/app_styles.dart';
import 'package:android_s_fl/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);
  final Map<String, dynamic> ticket;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(

      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?167:169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // showing the blue part of the csrd/tickets

            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xff526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(21),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white,):Styles.headLineStyle3,),

                      Expanded(child: Container()),
                      ThickContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext , BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                  ),),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.6,child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white:Color(0xff8accf7)),),),
                        ],
                      ),),

                      ThickContainer(isColor: true,),

                      Expanded(child: Container()),

                      Text(ticket["to"]['code'],style: isColor==null?  Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: AppLayout.getWidth(90),
                      child: Text(ticket['from']['name'],
                        style: isColor==null?  Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                      
                    ),
                    Text(ticket['flying_time'],
                      style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                    SizedBox(
                      width: AppLayout.getWidth(90),
                      child: Text(ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),

                    ),
                  ],),
                ],
              ),
            ),

            // showing the orange part of the card/ticket
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,//const Color(0xfff37b67),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constrains) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                            List.generate((constrains.constrainWidth()/15).floor(), (index) => SizedBox(
                              width: 5, height: 1,
                              child: DecoratedBox(
                              decoration: BoxDecoration(
                              color: isColor==null? Colors.white:Colors.grey.shade300,
                              ),
                            ),
                          )),
                        );
                      },
                      ),
                  ),),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
            // bottom part the orange card/ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0),
                ),
              ),
              padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Date",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                            style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Departure time",
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Number",textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
