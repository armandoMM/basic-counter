import 'package:flutter/material.dart';

class CounterScreen  extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase(){
    counter++;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  void restart(){
    counter=0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 =  TextStyle(fontSize: 30);

    return  Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen',style: TextStyle(color: Colors.white),)),
        elevation: 0,
        backgroundColor: Colors.purple[900],
      ),
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Número de clicks', style: fontSize30,),
            Text( '$counter' , style: const TextStyle(fontSize: 30)),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(increaseFn: increase ,decreaseFn: decrease, restartFn: restart,)
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.restartFn,
  });

  final Function increaseFn,decreaseFn,restartFn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: ()=>increaseFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: ()=>restartFn()
        ),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: ()=> decreaseFn()
        ),
      ],
    );
  }
}