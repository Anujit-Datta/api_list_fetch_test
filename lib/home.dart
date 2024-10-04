import 'dart:convert';
import 'dart:developer';

import 'package:api_list_fetch_test/Models/packages_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Packages> packagesList = [];
  @override
  void initState() {
    super.initState();
    fetchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Fetch Test'),
      ),
      body: ListView.builder(
        itemCount: packagesList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                  '${packagesList[index].subscriptionLabel} (${packagesList[index].subscriptionType})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      packagesList[index].features?.tooltips.length ?? 0,
                      (indx) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${packagesList[index].features?.tooltips[indx].name ?? 'Feature Name'}:',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          '         ${packagesList[index].features?.tooltips[indx].tooltip ?? 'Information'}',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              leading: CircleAvatar(
                child: Text('${packagesList[index].id}'),
              ),
              trailing: Text('${packagesList[index].price}\$'),
            ),
          );
        },
      ),
    );
  }

  fetchList() async {
    var res = await get(
        Uri.parse(
            'https://aisalesteams.com/subscription/plans/subscription-plans/'),
        headers: {
          'Content-Type': 'application/json',
          'Token': 'fe7d9a60be6d26fe49aa39b909113ed933ddaf75',
        });
    if (res.statusCode == 200) {
      List responses = json.decode(res.body);
      log('$responses');
      packagesList = responses.map((e) => Packages.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
    setState(() {});
  }
}
