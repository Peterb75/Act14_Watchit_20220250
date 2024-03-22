import 'package:act14/models/counter_models.dart';
import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';

class CounterTextWidgets extends WatchingWidget {
  const CounterTextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final counterValue = watchValue((CounterModel x) => x.counter);
    return Text(
              '$counterValue',
              style: Theme.of(context).textTheme.headlineMedium,
            )
;
  }
}