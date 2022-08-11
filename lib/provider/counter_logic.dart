import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final countNotify = StateNotifierProvider<CounterNotifierProvider, int>((ref) => CounterNotifierProvider(0));


class CounterNotifierProvider extends StateNotifier<int>{
  CounterNotifierProvider(super.state);


  void increase(){
    state++;
  }


  void decrease(){
    state--;
  }

  void  reset(){
    state = 0;
  }

}













final counterStateProvider = StateProvider((ref) => 0);

class CounterProvider extends ChangeNotifier{

  int number = 0;
  void increment(){
    number++;
    notifyListeners();
  }

  void decrement(){
    if(number != 0){
      number--;
    } else {
      number;
    }
    notifyListeners();
  }

}



//final counterProvider = ChangeNotifierProvider((ref) => CounterProvider());

// class CounterProvider extends ChangeNotifier{
//
//   int number = 0;
//   void increment(){
//     number++;
//     notifyListeners();
//   }
//
//   void decrement(){
//     if(number != 0){
//       number--;
//     } else {
//       number;
//     }
//     notifyListeners();
//   }
//
// }



class Todo{
  String label;

  Todo({required this.label});
}

final todoProvider = StateNotifierProvider<TodoProvider, List<Todo>>((ref) => TodoProvider([]));


class TodoProvider extends StateNotifier<List<Todo>>{
  TodoProvider(super.state);

  void addTodo(Todo todo){
    state = [...state, todo];
  }

  void removeTodo(Todo todo){
    state.remove(todo);
    state = [...state];
  }


  void updateTodo(Todo todo, label){
    todo.label = label;
    state = [...state];
  }
}










