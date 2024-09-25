import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:flutter_application_1/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

//Stateless Widget es un Widget (Componente) que no tiene estado, Flutter sabe cuando se vuelve a re dibujar

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
        home: const CounterFunctionsScreen());
  }
}

//Stateful Widget es un Widget (Componente) que tiene estado, se vuelve a re dibujar y se actualiza el estado, tiene ciclo de vida
