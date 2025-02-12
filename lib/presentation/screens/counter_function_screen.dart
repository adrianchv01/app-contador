import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  String texto = "";

  @override
  Widget build(BuildContext context) {
    // if (clickCounter == 1) {
    //   texto = "click";
    // } else {
    //   texto = "clicks";
    // }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FUNCIONES DE CONTADOR',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            }, 
            icon: Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de clicks realizados:'),
            Text('$clickCounter',
                style: TextStyle(fontSize: 120, fontWeight: FontWeight.w100)),
            Text('click${clickCounter == 1 ? '' : 's'}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton( icon: Icons.exposure_minus_1_outlined,
          onPressed: (){
            if (clickCounter == 0) return;
            setState(() {
              clickCounter --;
            });
          },
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;


  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amber,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
