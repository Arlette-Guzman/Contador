import'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int contador=0;
  return Scaffold(
        appBar: AppBar(
          title: Text("Flutter AppBar Example"),
          centerTitle: true,
        ),
        body: Center(
          child: Column
          (mainAxisAlignment: MainAxisAlignment.center,
           children: [
        Text("Contador de clics:"),
        Text("$contador")
      ]
      )
      ),
       floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
        FloatingActionButton(
          onPressed: () {
            contador++;
            print("Hola spy un contador: $contador");
          },
          child: Icon(
           Icons.add, 
           size: 30
           )
           ),
        
      ]
      ), 
      );
  }
}

