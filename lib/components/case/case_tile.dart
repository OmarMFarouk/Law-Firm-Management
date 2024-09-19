import 'package:flutter/material.dart';
import 'package:lawyermanagement/modules/program_screens/case_details.dart';

import '../../models/cases_model.dart';

class CaseTile extends StatelessWidget {
  const CaseTile({
    super.key,
    required this.caseDetails,
  });

  final Case caseDetails;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CaseDetailsScreen(
              caseDetails: caseDetails,
            ),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Text(
              caseDetails.caseSubject!,
              maxLines: 2,
            )),
            Expanded(
                child: Text(
              caseDetails.caseNumber!,
              maxLines: 2,
            )),
            Expanded(
                child: Text(
              caseDetails.caseClientName!,
              maxLines: 2,
            )),
            Expanded(
                child: Text(
              caseDetails.caseType!,
              maxLines: 2,
            )),
          ],
        ),
      ),
    );
  }
}
