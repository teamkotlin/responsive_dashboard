import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/controllers/MenuAppController.dart';
import 'package:admin_dashboard/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
          canvasColor: secondaryColor),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        )
      ],
      child:const MainScreen(),),
    );
  }
}
