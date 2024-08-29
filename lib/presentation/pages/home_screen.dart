import 'package:flutter/material.dart';
import 'package:tour_guide_mobile/presentation/widgets/app_bar_widget.dart';
import 'package:tour_guide_mobile/presentation/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchWidget(
                key: Key('search_widget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
