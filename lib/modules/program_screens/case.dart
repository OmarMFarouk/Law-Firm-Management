import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawyermanagement/blocs/case_bloc/case_cubit.dart';
import 'package:lawyermanagement/blocs/case_bloc/case_states.dart';
import 'package:lawyermanagement/models/cases_model.dart';

import '../../components/case/case_floating_button.dart';
import '../../components/case/case_tile.dart';

class CaseScreen extends StatelessWidget {
  const CaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CaseCubit, CaseStates>(builder: (context, state) {
      final formKey = GlobalKey<FormState>();
      var cubit = CaseCubit.get(context);
      return Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton:
              CaseFloatingButton(formKey: formKey, cubit: cubit),
          body: Card(
            color: Colors.white,
            elevation: 2,
            margin: const EdgeInsets.all(50),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Cases',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          onChanged: (value) => cubit.getMatch(query: value),
                          decoration: const InputDecoration(
                            hintText: 'Find a case...',
                            prefixIcon: Icon(CupertinoIcons.search),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.print,
                            size: 30,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Case Subject',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Case Number',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Client',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Case Type',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(),
                  cubit.searchList.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: cubit.searchList.length,
                            itemBuilder: (context, index) {
                              Case caseDetails = cubit.searchList[index];
                              return CaseTile(caseDetails: caseDetails);
                            },
                          ),
                        )
                      : cubit.casesModel != null
                          ? Expanded(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: cubit.casesModel!.cases!.length,
                                  itemBuilder: (context, index) {
                                    Case caseDetails =
                                        cubit.casesModel!.cases![index]!;
                                    return CaseTile(caseDetails: caseDetails);
                                  }))
                          : const SizedBox()
                ],
              ),
            ),
          ));
    }, listener: (context, state) {
      if (state is CaseAdded) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.green,
            content: Text('Case Added Succesfully')));
      }
      if (state is CaseFailure) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Try again later..'),
          backgroundColor: Colors.red,
        ));
      }
    });
  }
}
