import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:formosa_club/data/home_controller.dart';
import 'package:formosa_club/screens/addNewEquipmentTimeCardScreen.dart';

class EquipmentTimeCard extends StatefulWidget {
  final String image;
  final String name;

  const EquipmentTimeCard({super.key, required this.image, required this.name});

  @override
  State<EquipmentTimeCard> createState() => _EquipmentTimeCardState();
}

class _EquipmentTimeCardState extends State<EquipmentTimeCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card.outlined(
            elevation: 2,
            child: ListTile(
              leading: Image.asset(widget.image),
              title: Text(
                widget.name,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              trailing: CircularCountDownTimer(
                  width: 30,
                  height: 30,
                  duration: 10,
                  fillColor: Colors.green,
                  ringColor: Colors.white,
                  isReverse: false,
                  isReverseAnimation: false,
                  isTimerTextShown: false,
                  controller: CountDownController(),

                  onComplete: (){
                    //Resetar e trocar a cor
                  },
              ),
              onTap: () {
                  Navigator.pop(context, widget);
              },
            ),
          ),
        ),
      ],
    );
  }
}
