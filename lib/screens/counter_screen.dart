import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Numero de Taps', style: fontSize30),
              Text('$counter', style: fontSize30)
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          
          FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
            onPressed: () => setState( () => { if(counter>0) counter-- })
          ),

          FloatingActionButton(
            child: const Icon(Icons.delete),
            onPressed: () => setState( () => counter = 0)
          ),

          FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
            onPressed: () => setState( () => counter++)
          ),

        ],
      ),
    );
  }
}
