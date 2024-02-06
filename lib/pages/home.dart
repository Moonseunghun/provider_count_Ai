import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/count.dart';
import '../widget/button.dart';
import '../widget/counter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => Counts(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Counter(),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}