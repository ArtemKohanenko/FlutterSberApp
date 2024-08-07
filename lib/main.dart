import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:flutter_sber/PageBody.dart';
import 'package:flutter_sber/PageHeader.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary)
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              height: 1200,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 44),
                    PageHeader(),
                    SizedBox(height: 14),
                    Expanded(
                      child: PageBody()
                    )
                  ],
                ),
              ),
            ),
          ),
      
    );
  }
}
