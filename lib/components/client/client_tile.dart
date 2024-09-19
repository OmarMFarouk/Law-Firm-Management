import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/clients_model.dart';

class ClientTile extends StatelessWidget {
  const ClientTile({
    super.key,
    required this.clientDetails,
  });

  final Client clientDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Text(
            clientDetails.clientName!,
            maxLines: 2,
          )),
          Expanded(
              child: Text(
            clientDetails.clientPhone!,
            maxLines: 2,
          )),
          Expanded(
              child: Text(
            clientDetails.clientEmail!,
            maxLines: 2,
          )),
        ],
      ),
    );
  }
}

Widget _buildTextField(String label, TextEditingController controller) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return '*Empty';
      }
      return null;
    },
    controller: controller,
    maxLines: null,
    inputFormatters:
        label == 'Phone' ? [FilteringTextInputFormatter.digitsOnly] : null,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      fillColor: Colors.grey[100],
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    ),
  );
}
