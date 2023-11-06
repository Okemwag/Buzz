import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Music App',
      home: BlocProvider(
        create: (context) => MusicBloc(),
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Music App'),
      ),
      body: Center(
        child: BlocBuilder<MusicBloc, MusicState>(
          builder: (context, state) {
            // Build UI based on the current state
            return Text('Welcome to your music app!');
          },
        ),
      ),
    );
  }
}
