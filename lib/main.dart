import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lawyermanagement/blocs/case_bloc/case_cubit.dart';
import 'package:lawyermanagement/blocs/client_bloc/client_cubit.dart';
import 'package:lawyermanagement/modules/program_screens/layout.dart';

import 'shared/bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CaseCubit()..fetchCases()),
        BlocProvider(create: (context) => ClientCubit()..fetchClients())
      ],
      child: MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        home: const LayoutProgramScreen(),
      ),
    );
  }
}
