import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/core/di/service_locator.dart';
import 'package:my_app/features/dashboard/presentation/dashboard_page.dart';


void main() async {
  await initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: MaterialApp(
      home: DashBoardPage(),
    ));
  }
}
