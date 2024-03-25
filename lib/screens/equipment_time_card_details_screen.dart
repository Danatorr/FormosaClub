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
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pinkAccent,
                child: Image.asset(
                  this.widget.equipmentTimeCard.image,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Valor devido: R\$ ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
