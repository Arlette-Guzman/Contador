import'package:flutter/material.dart';


class ContadorScreen extends StatefulWidget {
 
  _ContadorScreen createState() => _ContadorScreen();
}

class _ContadorScreen extends State<ContadorScreen> {
  int contador=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Pantalla contador"),
            centerTitle: true,
          ),
          body: Center(
          child: Column
          (mainAxisAlignment: MainAxisAlignment.center,
           children: [
        Text("Contador de clics:"),
        Text('$contador')
      ]
      )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: [
        FloatingActionButton(
          onPressed: () => setState(()=> contador++),
          child: Icon(
           Icons.add, 
           size: 30
           )
           ),
         FloatingActionButton(
                  onPressed: () => setState(() => contador--),
                  child: Icon(
                   Icons.remove, 
                   size: 30
                   )
                   ),
                    FloatingActionButton(
                             onPressed: () => setState(() => contador=0),
                             child: Icon(
                              Icons.restart_alt, 
                              size: 30
                              )
                              ),
      ]
      ), 
        );
  }
}



