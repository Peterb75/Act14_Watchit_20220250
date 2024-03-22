import 'package:act14/dependecies.dart';
import 'package:act14/models/counter_models.dart';
import 'package:act14/widgets/counter_image_widget.dart';
import 'package:act14/widgets/counter_text_field_widget.dart';
import 'package:act14/widgets/counter_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';

void main() {
  initializeDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("a"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button this many times:',
            ),
            CounterTextWidgets(),
            CounterTextFieldsWidgets(),
            CounterImageWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          di<CounterModel>().counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
