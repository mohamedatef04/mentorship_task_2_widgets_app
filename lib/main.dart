import 'package:flutter/material.dart';
import 'package:widgets_app/absorb_pointer_widget.dart';
import 'package:widgets_app/auto_complete_widget.dart';
import 'package:widgets_app/dismissable_widget.dart';

void main() {
  runApp(const MiniWidgetsApp());
}

class MiniWidgetsApp extends StatelessWidget {
  const MiniWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Mini Widgets App'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AutoCompleteWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              SliverToBoxAdapter(
                child: AbsorbPointerWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              SliverToBoxAdapter(child: DismissibleWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
