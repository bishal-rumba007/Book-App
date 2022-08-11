import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start_again/provider/counter_logic.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TodoPage extends StatelessWidget {

  final labelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final todos = ref.watch(todoProvider);
          return SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: TextEditingController(),
                      onFieldSubmitted: (val){
                        ref.read(todoProvider.notifier).addTodo(Todo(label: val));
                      },
                      decoration: InputDecoration(
                        hintText: 'add todos',
                      ),
                    ),

                    Column(
                      children: todos.map((e) {
                        return ListTile(
                          leading: Icon(Icons.add),
                          title: Text(e.label),
                          trailing: Container(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: (){
                                      Get.to(() => EditTodo(e, ref), transition: Transition.leftToRight);
                                    },
                                    icon: Icon(Icons.edit)) ,
                                IconButton(onPressed: (){
                                  ref.watch(todoProvider.notifier).removeTodo(e);
                                },
                                    icon: Icon(Icons.delete)
                                ),
                              ],
                            ),
                          ),

                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
class EditTodo extends StatelessWidget {
  Todo todo;
  WidgetRef ref;
  EditTodo(this.todo, this.ref);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.label),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: TextFormField(
                initialValue: todo.label,
                onFieldSubmitted: (val) {
                  ref.read(todoProvider.notifier).updateTodo(todo, val);
                  Get.back();
                },
              ),
            ),
          );
        }
      ),
    );
  }
}
