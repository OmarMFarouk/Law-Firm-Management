import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawyermanagement/blocs/case_bloc/case_cubit.dart';
import 'package:lawyermanagement/blocs/case_bloc/case_states.dart';
import 'package:lawyermanagement/blocs/client_bloc/client_states.dart';
import 'package:lawyermanagement/components/case/case_tile.dart';
import 'package:lawyermanagement/components/case_details/case_details_fb.dart';
import 'package:lawyermanagement/models/case_files_model.dart';
import 'package:lawyermanagement/models/cases_model.dart';
import 'package:lawyermanagement/services/api/cases_api.dart';

class CaseDetailsScreen extends StatelessWidget {
  const CaseDetailsScreen({super.key, required this.caseDetails});
  final Case caseDetails;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CaseCubit, CaseStates>(
      listener: (context, state) {
        if (state is ClientAdded) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.green,
              content: Text('Client Added Succesfully')));
        }
        if (state is ClientFailure) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Try again later..'),
            backgroundColor: Colors.red,
          ));
        }
      },
      builder: (context, state) {
        var cubit = CaseCubit.get(context);
        return Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.white,
              title: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Text(
                  'Case Details',
                ),
              ),
              backgroundColor: Colors.indigo[800],
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.person_alt_circle_fill,
                        size: 35,
                      )),
                )
              ],
            ),
            backgroundColor: const Color(0xffbbbbbb),
            floatingActionButton: CaseDetailsFB(
                caseId: caseDetails.caseId!,
                cubit: cubit,
                caseClientId: caseDetails.caseClientId!),
            body: Card(
              color: Colors.white,
              elevation: 2,
              margin: const EdgeInsets.all(50),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
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
                    CaseTile(caseDetails: caseDetails),
                    const Divider(),
                    const Text(
                      'Case Files',
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: FutureBuilder(
                          future: CasesApi()
                              .fetchCaseFiles(caseId: caseDetails.caseId),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              CaseFilesModel caseFiles =
                                  CaseFilesModel.fromJson(snapshot.data);

                              return GridView.builder(
                                  itemCount: caseFiles.files!.length,
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          crossAxisCount: 4,
                                          childAspectRatio: 2 / 1),
                                  itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          CasesApi().downloadFile(caseFiles
                                              .files![index]!.filepath!);
                                        },
                                        child: Ink(
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey[300],
                                          ),
                                          child: Text(
                                              '${caseFiles.files![index]!.filedateAdded!}\n${index + 1}\n${caseFiles.files![index]!.filepath!.split('.').last}'),
                                        ),
                                      ));
                            } else {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          }),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
