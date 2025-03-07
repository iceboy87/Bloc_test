import 'package:bloc_project/pages/home_page.dart';
import 'package:bloc_project/repository/repository.dart';
import 'package:bloc_project/userBloc/userBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => UserBloc(UserRepo()))],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Bloc Project",
            theme: ThemeData(primarySwatch: Colors.blue),
            home: UserScreen(),
          ));
    });
  }
}
