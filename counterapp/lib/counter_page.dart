import 'package:counterapp/blocs/counter_bloc.dart';
import 'package:counterapp/events/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    return Scaffold(body: SafeArea(child: BlocBuilder<CounterBloc, int>(
      builder: (context, counter) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Two acctions/events here:', style: TextStyle(fontSize: 25)),
            Container(
              child: FlatButton(
                  onPressed: () {
                    print('press increment');
                    counterBloc.add(CounterEvent.increment);
                  },
                  child: Text(
                    "Increment(+)",
                    style: TextStyle(color: Colors.white),
                  )),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.green),
            ),
            Text('Resutl:$counter',
                style: TextStyle(fontSize: 32, color: Colors.blue)),
            Container(
              child: FlatButton(
                  onPressed: () {
                    print('press decrement');
                    counterBloc.add(CounterEvent.decrement);
                  },
                  child: Text(
                    "Dicremnet(-)",
                    style: TextStyle(color: Colors.white),
                  )),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.red),
            )
          ],
        );
      },
    )));
  }
}
