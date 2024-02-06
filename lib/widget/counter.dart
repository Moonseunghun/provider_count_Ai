import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/count.dart';

class Counter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('Counter');
    return Text(
      context.watch<Counts>().count.toString(),
      style: TextStyle(
        fontSize: 20,
      ),
    );  }
}
