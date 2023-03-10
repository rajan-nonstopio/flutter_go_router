import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/model/user.dart';
import 'package:go_router/go_router.dart';

import '../../utils/constants/route_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              context.goNamed("/${RouteConstants.home}");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.goNamed(
                  RouteConstants.setting,
                  params: {'name': 'Rajan'},
                  queryParams: {
                    "query": "query",
                  },
                  extra: UserModel(
                    name: "Rajan",
                    email: "rajan@gmail.com",
                    id: "123",
                  ),
                );
              },
              child: const Text('Setting'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.goNamed(RouteConstants.movie);
              },
              child: const Text('Movies'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.goNamed(RouteConstants.song);
              },
              child: const Text('Songs'),
            ),
          ],
        ),
      ),
    );
  }
}
