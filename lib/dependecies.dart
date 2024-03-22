import 'package:act14/models/counter_models.dart';
import 'package:watch_it/watch_it.dart';

void initializeDependecies(){
  di.registerSingleton<CounterModel>(CounterModel());
}