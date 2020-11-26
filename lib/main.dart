

import 'package:MachineTest/file.dart';
import 'package:flutter/material.dart';
import 'package:MachineTest/page.dart';

main(){
  runApp(MaterialApp(
    home: MachineTest(),
    routes: {
      Details.routeName : (context) => Details(),
    },
  ));
}


