import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pets/controllers/http_controllers.dart';


class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  late Future<Todos> _futureTodos;

  @override
  void initState() {
    super.initState();
    _futureTodos = fetchTodos();
  }

  Future<Todos> fetchTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));

    if (response.statusCode == 200) {
      return Todos.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load todos');
    }
  }

  // Function to reload data from the API
  Future<void> _reloadData() async {
    setState(() {
      _futureTodos = fetchTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan API'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _reloadData,
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<Todos>(
          future: _futureTodos,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('User ID: ${snapshot.data!.userId}'),
                  Text('ID: ${snapshot.data!.id}'),
                  Text('Completed: ${snapshot.data!.completed.toString()}'),
                  Text('Title: ${snapshot.data!.title}'),
                ],
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else {
              return const Text('No data');
            }
          },
        ),
      ),
    );
  }
}