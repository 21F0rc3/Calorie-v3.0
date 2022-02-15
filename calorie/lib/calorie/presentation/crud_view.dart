// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import '../calorie.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CrudView extends StatelessWidget {
  CrudCubit crudCubit = CrudCubit("");

  // layout da homepage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de CRUD básico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Inserir dados', style: TextStyle(fontSize: 20),),
              onPressed: () {crudCubit.create("meal");},
            ),
            RaisedButton(
              child: Text('Consultar dados', style: TextStyle(fontSize: 20),),
              onPressed: () {crudCubit.read("meal");},
            ),
            RaisedButton(
              child: Text('Atualizar dados', style: TextStyle(fontSize: 20),),
              onPressed: () {crudCubit.update("meal");},
            ),
            RaisedButton(
              child: Text('Deletar dados', style: TextStyle(fontSize: 20),),
              onPressed: () {crudCubit.delete("meal");},
            ),
          ],
        ),
      ),
    );
  }
}