import 'package:flutter/material.dart';

import 'user.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Http-Json-ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Text("Json-ListView"),
    );
  }
}

class BuildListView extends State {
  @override
  createState() => _BuildListViewState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _BuildListViewState extends State {
  var users = <User>[];
  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Usuários"),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(users[index].name));
            }));
  }
}
