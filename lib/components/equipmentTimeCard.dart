import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:formosa_club/screens/equipment_time_card_details_screen.dart';

class EquipmentTimeCard extends StatefulWidget {
  final String image;
  final String name;
  final String currentScreen;

  EquipmentTimeCard(
      {super.key,
      required this.image,
      required this.name,
      required this.currentScreen});

  double dueValue = 50.0;
  CountDownController countDownController = CountDownController();

  @override
  State<EquipmentTimeCard> createState() => _EquipmentTimeCardState();
}

class _EquipmentTimeCardState extends State<EquipmentTimeCard> {

  Color ringFillColor = Colors.green;
  int overtimeMinutes = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card.outlined(
            elevation: 2,
            child: (){
              if(widget.currentScreen == "listScreen"){
                return ListTile(
                  leading: Image.asset(widget.image),
                  title: Text(
                    widget.name,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  trailing: CircularCountDownTimer(
                    width: 30,
                    height: 30,
                    duration: 3,
                    fillColor: ringFillColor,
                    ringColor: Colors.white,
                    isReverse: false,
                    isReverseAnimation: false,
                    isTimerTextShown: false,
                    controller: widget.countDownController,
                    onComplete: () {
                      setState(() {
                        ringFillColor = Colors.red;
                        overtimeMinutes++;
                        widget.countDownController.restart(duration: 5);
                      });

                      widget.dueValue = widget.dueValue + 5;
                    },
                  ),
                  onTap: () {
                    if (widget.currentScreen == "listScreen") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EquipmentTimeCardDetailScreen(
                              equipmentTimeCard: widget),
                        ),
                      );
                    } else {
                      Navigator.pop(context, widget);
                    }
                  },
                );
              } else if(widget.currentScreen == "addScreen"){
                return ListTile(
                  leading: Image.asset(widget.image),
                  title: Text(
                    widget.name,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    if (widget.currentScreen == "listScreen") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EquipmentTimeCardDetailScreen(
                              equipmentTimeCard: widget),
                        ),
                      );
                    } else {
                      Navigator.pop(context, widget);
                    }
                  },
                );
            }
            }()
          ),
        ),
      ],
    );
  }
}
