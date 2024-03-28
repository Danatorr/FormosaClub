import 'package:flutter/material.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';

class AddNewEquipmentTimeCardScreen extends StatefulWidget {
  const AddNewEquipmentTimeCardScreen({super.key, required this.equipmentCardContext});

  final BuildContext equipmentCardContext;

  @override
  State<AddNewEquipmentTimeCardScreen> createState() =>
      _AddNewEquipmentTimeCardScreenState();
}

class _AddNewEquipmentTimeCardScreenState
    extends State<AddNewEquipmentTimeCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        title: const Text(
          "Novo Aluguel",
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          EquipmentTimeCard(
            image: 'assets/images/jetski.jpg',
            name: 'Jet-Ski',
            currentScreen: "addScreen",
          ),
          EquipmentTimeCard(
            image: 'assets/images/kayak.png',
            name: 'Kayak',
            currentScreen: "addScreen",
          )
        ],
      )),
    ));
  }
}
