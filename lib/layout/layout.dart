import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyermanagement/layout/cubit/cubit.dart';
import 'package:lawyermanagement/layout/cubit/states.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WebCubit(),
      child: BlocConsumer<WebCubit, WebStates>(
        builder: (context, state) {
          final cubit = WebCubit.get(context);
          return Scaffold(
            body: Stack(
              children: [
                Positioned.fill(
                  child: cubit.screens[cubit.currentIndex],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.3)
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.balanceScale,
                            size: 30,
                            color: Colors.tealAccent,
                          ),
                          label: const Text(
                            "Lawyer",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Merriweather',
                            ),
                          ),
                        ),
                        BottomAppBar(
                          color: Colors.transparent,
                          child: Row(
                            children: cubit.bottomNavItems.map((item) {
                              int index = cubit.bottomNavItems.indexOf(item);
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MaterialButton(
                                  hoverColor: Colors.teal.withOpacity(0.2),
                                  splashColor:
                                      Colors.tealAccent.withOpacity(0.3),
                                  highlightColor:
                                      Colors.tealAccent.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    item.label ?? '',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.2,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 4.0,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () => cubit.changeTab(index),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
