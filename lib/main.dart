import 'package:burgan_branches/branch.dart';
import 'package:flutter/material.dart';
import 'branches.dart';
import 'home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

// Step 2

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // Step 4
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
       routerConfig: _router,

    );
    
  }
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>HomePage(),
      ),
      GoRoute(
        path: '/branch',
        builder: (context, state) => BurganBankBranches(),
      ),
      GoRoute(
        path: '/branch:name',
        builder: (context, state) { final branch = state.extra as Branch;
        return BranchDetailPage(branch: branch);
        },
      )
    ]
  );
}
