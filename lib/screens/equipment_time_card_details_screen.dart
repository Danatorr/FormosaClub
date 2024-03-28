import 'package:flutter/material.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';

class EquipmentTimeCardDetailScreen extends StatefulWidget {
  final EquipmentTimeCard equipmentTimeCard;

  const EquipmentTimeCardDetailScreen(
      {super.key, required this.equipmentTimeCard});

  @override
  State<EquipmentTimeCardDetailScreen> createState() =>
      _EquipmentTimeCardDetailScreenState();
}

class _EquipmentTimeCardDetailScreenState
    extends State<EquipmentTimeCardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        title: const Text("Formosa Club"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  widget.equipmentTimeCard.image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Valor devido: R\$ ${widget.equipmentTimeCard.dueValue / 2}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () =>
                          widget.equipmentTimeCard.countDownController.pause(),
                      child: const Icon(Icons.pause)),
                  ElevatedButton(
                      onPressed: () =>
                          widget.equipmentTimeCard.countDownController.resume(),
                      child: const Icon(Icons.play_arrow)),
                  ElevatedButton(
                      onPressed: () =>
                          widget.equipmentTimeCard.countDownController.reset(),
                      child: const Icon(Icons.stop)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
