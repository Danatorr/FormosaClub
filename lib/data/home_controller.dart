import 'package:flutter/material.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';

class HomeController extends InheritedNotifier<ValueNotifier<List<EquipmentTimeCard>>> {
   HomeController({
    super.key,
    required Widget child,
  }) : super(child: child, notifier: ValueNotifier([]));

  static HomeController of(BuildContext context) {
    final HomeController? result =
        context.dependOnInheritedWidgetOfExactType<HomeController>();
    assert(result != null, 'No HomeController found in context');
    return result!;
  }

   void addEquipmentTimeCard(String image, String name){
     notifier!.value.add(EquipmentTimeCard(image: image, name: name));
   }


  @override
  bool updateShouldNotify(HomeController old) {
    return false;
  }
}
