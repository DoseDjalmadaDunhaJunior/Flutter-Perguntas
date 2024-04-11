import 'package:flutter/material.dart';

main() {
  runApp(new AppDePergunta());
}

class AppDePergunta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
        ),
        body: Text('Aqui deve ser o corpo'),
      ),
    );
  }
}
