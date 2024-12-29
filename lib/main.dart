import 'package:flutter/material.dart';
import 'package:jobs_app/view/home_layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const JobsApp());
}

class JobsApp extends StatelessWidget {
  const JobsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
  
      home:  HomeLayout(),
    );
  }
}

