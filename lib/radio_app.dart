import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio_web.dart';
import 'package:radio_flutter/radio/radio_player.dart';

import 'home_screen.dart';
import 'player_bloc/player_bloc.dart';

class RadioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RadioPlayer radioPlayer = JustAudioPlayer();
    return MaterialApp(
      title: 'Online Radio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BlocProvider<PlayerBloc>(
        create: (context) => PlayerBloc(radioPlayer: radioPlayer),
        child: HomeScreen(),
      ),
    );
  }
}