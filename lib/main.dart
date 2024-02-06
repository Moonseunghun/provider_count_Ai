import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/myapp.dart';
import 'providers/count.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counts()),
      ],
      child: MyApp(),
    ),
  );
}


