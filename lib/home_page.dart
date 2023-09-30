import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_home.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _body(),
    );
  }

  _body() {
    log('body build init');
    return Column(
      children: [
        FilledButton(onPressed: () => context.read<CubitHome>().clickSuccess(), child: const Text('Click')),
        BlocBuilder<CubitHome, HomeState>(builder: (context, state) {
          log('Listview build');
          return ListView(
            shrinkWrap: true,
            children: [
              Text('Ola', style: TextStyle(fontSize: 24)),
            ],
          );
        }),
      ],
    );
  }
}
