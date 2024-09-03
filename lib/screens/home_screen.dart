import 'package:flutter/material.dart';

class HomeScreen  extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 =  TextStyle(fontSize: 30);
    int counter = 10;
    return  Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: const Center(child: Text('Home Screen')),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Número de clicks', style: fontSize30,),
            Text('$counter', style: const TextStyle(fontSize: 30)),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          counter++;
        }
      )
    );
  }

}