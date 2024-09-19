import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawyermanagement/blocs/client_bloc/client_cubit.dart';
import 'package:lawyermanagement/blocs/client_bloc/client_states.dart';
import 'package:lawyermanagement/models/clients_model.dart';

import '../../components/client/client_floating_button.dart';
import '../../components/client/client_tile.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientCubit, ClientStates>(
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
        final formKey = GlobalKey<FormState>();
        var cubit = ClientCubit.get(context);
        return Scaffold(
            backgroundColor: Colors.transparent,
            floatingActionButton:
                ClientFloatingButton(formKey: formKey, cubit: cubit),
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
                          'Clients',
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
                            'Name',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Phone',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Email',
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
                                Client clientDetails = cubit.searchList[index];
                                return ClientTile(clientDetails: clientDetails);
                              },
                            ),
                          )
                        : cubit.clientsModel != null
                            ? Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount:
                                      cubit.clientsModel!.clients!.length,
                                  itemBuilder: (context, index) {
                                    Client clientDetails =
                                        cubit.clientsModel!.clients![index]!;
                                    return ClientTile(
                                        clientDetails: clientDetails);
                                  },
                                ),
                              )
                            : const SizedBox()
                  ],
                ),
              ),
            ));
      },
    );
  }
}
