import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/counter_logic.dart';

class CounterPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {
    ref.listen(counterStateProvider, (previous, next) {
      print(previous);
      print(next);
    });

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        width: double.infinity,
        child: Consumer(
            builder: (context, ref, child) {
              final numberData = ref.watch(countNotify);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$numberData', style: TextStyle(fontSize: 50),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            // ref.read(counterStateProvider.notifier).state++;
                            ref.read(countNotify.notifier).increase();
                          },
                          child: Text('Add')
                      ),
                      SizedBox(width: 15,),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          if(numberData != 0){
                            // ref.read(counterStateProvider.notifier).state--;
                            ref.read(countNotify.notifier).decrease();
                          } else{
                            ref.read(countNotify.notifier).reset();
                          }
                        },
                        child: Text('Minus'),
                      ),
                    ],
                  ),
                  TextButton(onPressed: (){
                    ref.read(countNotify.notifier).reset();
                  },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(60, 25),
                      ),
                      child: Text('Reset')
                  )
                ],
              );
            }
        ),
      ),
    );
  }
}