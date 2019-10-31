import 'package:bloc_counter/screens/counter_event.dart';
import 'package:bloc_counter/screens/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var counterBloc;

  @override
  void initState() {
    super.initState();
    counterBloc = BlocProvider.of<CounterBloc>(context);
  }

  @override
  void dispose() {
    counterBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('+'),
              onPressed: () {
                counterBloc.add(Add());
              },
            ),
            SizedBox(width: 24),
            BlocBuilder<CounterBloc, CounterState>(
              bloc: BlocProvider.of<CounterBloc>(context),
              builder: (context, state) {
                return Text(
                  state.value.toString(),
                  style: TextStyle(fontSize: 32),
                );
              },
            ),
            SizedBox(width: 24),
            RaisedButton(
              child: Text('-'),
              onPressed: () {
                counterBloc.add(Subtract());
              },
            ),
          ],
        ),
      ),
    );
  }
}
