import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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
              trailing: const CircularCountDownTimer(
                  width: 30,
                  height: 30,
                  duration: 10,
                  fillColor: Colors.red,
                  ringColor: Colors.white),
              onTap: () {
                final route = ModalRoute.of(context);
                if (route is! MaterialPageRoute) {
                  return; // Handle non-MaterialPageRoute cases
                }

                final settings = route.settings;
                if (settings.name == '/AddNewEquipmentTimeCardScreen') {
                  debugPrint("Estou dentro da tela de adicionar novo equipamento");
                } else if (settings.name == '/TimeManagementScreen') {
                  debugPrint("Estou dentro da tela de exibição de equipamentos ativos");
                } else {
                  // Handle other screens or default behavior
                }

                Navigator.pop(context);
              },
            ),
          ),
          // child: Container(
          //   width: 370,
          //   height: 80,
          //   color: Colors.blue,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       //Image.network(widget.image),
          //       CircularCountDownTimer(
          //         width: 30,
          //         height: 30,
          //         duration: 60,
          //         fillColor: Colors.yellow,
          //         ringColor: Colors.white,
          //         isReverse: true,
          //         isReverseAnimation: true,
          //         onComplete: () {},
          //       ),
          //       const CircularCountDownTimer(
          //           width: 30,
          //           height: 30,
          //           duration: 10,
          //           fillColor: Colors.red,
          //           ringColor: Colors.white),
          //       //Insert Countdown
          //     ],
          //   ),
          // ),
        ),
      ],
    );
  }
}
