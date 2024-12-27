// How to delay code execution using Future<>
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delay Code Execution',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  // This function is called when the button gets pressed
  void _showDialog(){
    // Delay for 2 seconds
    Future.delayed(const Duration(seconds: 2), (){
      // Show the dialog
      showDialog(
        context: context, 
        builder: (_) => const SimpleDialog(
          title: Text('Have a nice day'),
          contentPadding: EdgeInsets.all(25),
          children: [
            Text('This is a simple dialog'),
          ],
        ));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delay Code Execution'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showDialog, 
          child: const Text('Show Dialog Box')),
      ),
    );
  }
}