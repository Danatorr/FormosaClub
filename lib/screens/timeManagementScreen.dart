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
    List<EquipmentTimeCard> equipmentTimeCardList = [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        title: const Text("Formosa Club"),
      ),
      body: Center(
        child: FutureBuilder(
            future: Future.delayed(Duration.zero),
            builder: (context,snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                    itemBuilder: (context, index){
                      return equipmentTimeCardList[index].createState().build(context);
                    }
                );
              }
              return Text("null");
            }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (contextNew) => AddNewEquipmentTimeCardScreen(equipmentCardContext: context,))).then((value) => {

                setState(() {
                  EquipmentTimeCard e = value;
                  print(e.name);
                  equipmentTimeCardList.add(value as EquipmentTimeCard);
                  print(equipmentTimeCardList.length);
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
}
