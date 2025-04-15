import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/bloc/bloc_home.dart';
import 'package:state_management/bloc/service/counter_bloc.dart';
import 'package:state_management/inherited%20widget/inherited_home.dart';
import 'package:state_management/inherited%20widget/service/app_state.dart';
import 'package:state_management/provider/provider_home.dart';
import 'package:state_management/provider/service/provider_screen.dart';
import 'package:state_management/riverpod/riverpod_home.dart';
import 'getx/folder_structure/app/routes.dart';
import 'getx/getx_feature.dart';
import 'getx/counter_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// whenever this screen runs calls the appstate
class _MyAppState extends State<MyApp> {
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AppState(
        count: count,
        increment: _increment,
        decrement: _decrement,
        child: InheritedHome(),
      ),
    );
  }
}


// For Bloc wrap MaterialApp widh BlocProvider
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider( //MultiBlocProvider
      create: (context) => CounterBloc(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter State Management',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const BlocHome(),
        ),
    );
  }
}
*/


// For Riverpod wrap MaterialApp with ProviderScope
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter State Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const RiverpodHome(),
      ),
    );
  }
}
*/


// For Provider wrap MaterialApp with ChangeNotifierProvider
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // for single provider class
      create: (context) => ProviderScreen(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const ProviderHome(),
      ),
    );
  }
}
*/

// For Getx wrap with GetMaterialApp
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProviderHome(),
    );
  }
}
*/

// For Folder Structure APP
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      getPages: appRoutes(),
    );
  }
}
*/