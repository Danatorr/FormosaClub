import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';
import 'package:formosa_club/data/equipmentTimeCardInherited.dart';
import 'package:formosa_club/screens/addNewEquipmentTimeCardScreen.dart';

class TimeManagementScreen extends StatefulWidget {
  const TimeManagementScreen({super.key});

  @override
  State<TimeManagementScreen> createState() => _TimeManagementScreenState();
}

class _TimeManagementScreenState extends State<TimeManagementScreen> {
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
        child: ListView(
          children:
            EquipmentTimeCardInherited.of(context).equipmentTimeCardList,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (contextNew) => AddNewEquipmentTimeCardScreen()));
        },
        backgroundColor: Color(0xff2980b9),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
