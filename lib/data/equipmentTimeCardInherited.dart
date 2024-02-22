import 'package:flutter/cupertino.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';

class EquipmentTimeCardInherited extends InheritedWidget {
   EquipmentTimeCardInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  List<EquipmentTimeCard> equipmentTimeCardList = [];

  static EquipmentTimeCardInherited of(BuildContext context) {
    final EquipmentTimeCardInherited? result = context
        .dependOnInheritedWidgetOfExactType<EquipmentTimeCardInherited>();
    assert(result != null, 'No EquipmentTimeCardInherited found in context');
    return result!;
  }

  void addEquipmentTimeCard(String image, String name){
    equipmentTimeCardList.add(EquipmentTimeCard(image: image, name: name));
  }

  @override
  bool updateShouldNotify(EquipmentTimeCardInherited old) {
    return true;
  }
}
