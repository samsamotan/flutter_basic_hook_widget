import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'home_view_model.dart';

T  useChangeNotifierListenable<T extends ChangeNotifier>(T data){
    final state = useState<T>(data);
    return useListenable(state.value);
  }
class HomeView extends HookWidget{

  @override
  Widget build(BuildContext context) {
    final homeChangeNotifier = useChangeNotifierListenable(HomeChangeNotifier());
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter training to hook widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${homeChangeNotifier.increment}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _incrementCounter(homeChangeNotifier);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> _incrementCounter(HomeChangeNotifier homeChangeNotifier) async {
    homeChangeNotifier.reloadState();
  }
}