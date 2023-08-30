import 'package:bloc_homework_states/cubit/tab_cubit/tab_cubit.dart';
import 'package:bloc_homework_states/ui/multi_state/multi_state_screen.dart';
import 'package:bloc_homework_states/ui/single_state/single_state_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBoxScreen extends StatelessWidget {
  TabBoxScreen({super.key});

  List<Widget> screens = [
    const SingleStateScreen(),
    const MultiStateScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: context.watch<TabCubit>().state,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => context.watch<TabCubit>().updateIndex(index),
          currentIndex: context.watch<TabCubit>().state,
          items: const [
        BottomNavigationBarItem(
          label: "Single State",
          icon: Icon(Icons.people),
        ),
        BottomNavigationBarItem(
          label: "Multi State",
          icon: Icon(Icons.person),
        ),
      ]),
    );
  }
}
