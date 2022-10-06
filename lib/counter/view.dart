import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';
import 'state.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
  listener: (BuildContext context, CounterState state) { },
  builder: (BuildContext context, CounterState state) {
    return Builder(builder: (context) => _buildPage(context));
  },
),
    );
  }

  Widget _buildPage(BuildContext context) {
  //  final cubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App Bloc"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '${CounterCubit.get(context).counter}',
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    key:Key("1") ,
                    onPressed: CounterCubit.get(context).add,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                  SizedBox(width: 10,),
                  FloatingActionButton(
                    key:Key("2") ,
                    onPressed: CounterCubit.get(context).minus,
                    tooltip: 'Increment',
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),

          ],
        ),

      ),


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


