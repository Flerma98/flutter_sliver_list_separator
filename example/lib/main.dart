import 'package:flutter/material.dart';
import 'package:sliver_list_separator/sliver_list_separator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sliver list separator',
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
        home: const ExamplePage());
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  AppBar _appBar() {
    return AppBar(title: const Text('Example'));
  }

  Widget _listWidget() {
    final items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

    return SliverListSeparator(
        builder: (context, index) => ListTile(title: Text(items[index])),
        separator: const Divider(),
        childCount: items.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SafeArea(
            child:
                Scrollbar(child: CustomScrollView(slivers: [_listWidget()]))));
  }
}
