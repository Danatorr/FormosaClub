import 'package:flutter/material.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';
import 'package:formosa_club/data/home_controller.dart';
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
          child: ListView.builder(
            itemCount: HomeController.of(context).equipmentTimeCardList.length,
            itemBuilder: (context, index) => HomeController.of(context).equipmentTimeCardList[index],
                  ),
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HomeController.of(context).equipmentTimeCardList.length;
          Navigator.of(context)
              .push(MaterialPageRoute(
                  builder: (contextNew) => AddNewEquipmentTimeCardScreen(
                        equipmentCardContext: context,
                      )))
              .then((value) => {
                    setState(() {
                      EquipmentTimeCard e = value;

                      e = EquipmentTimeCard(name: e.name, image: e.image, currentScreen: "listScreen");

                      HomeController.of(context).equipmentTimeCardList.add(e);
                    }),
                  });
        },
        backgroundColor: const Color(0xff2980b9),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _TimeManagementScreenState && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}
