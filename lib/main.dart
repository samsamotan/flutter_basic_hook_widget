import 'package:flutter/material.dart';
import 'package:flutter_basic_hook_widget/apps/home/home_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Hook Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      initialRoute: "/",
    );
  }
}

