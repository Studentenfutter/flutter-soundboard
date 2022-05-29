// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:pocket_scat/util/quote.dart';

import 'searchable_quotes.dart';

class App extends StatelessWidget {
  final List<Quote> _allQuotes;
  final List<Quote> _clemenshof;
  final List<Quote> _affen;
  final List<Quote> _quiz;
  final List<Quote> _katzen;

  const App(
      this._affen, this._clemenshof, this._katzen, this._quiz, this._allQuotes);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
        hintColor: Colors.white70);

    return MaterialApp(
      title: 'Pocket Scat',
      theme: theme.copyWith(
          colorScheme:
              theme.colorScheme.copyWith(secondary: Colors.purpleAccent)),
      //home: SearchableQuotes(_allQuotes));
      home: DefaultTabController(
        animationDuration: Duration.zero,
        length: 5,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Alle Tierstimmen',
                ),
                Tab(
                  icon: Icon(Icons.forest),
                  text: 'Affen',
                ),
                Tab(
                  icon: Icon(Icons.cruelty_free),
                  text: 'Clemenshof',
                ),
                Tab(
                  icon: Icon(Icons.pets),
                  text: 'Katzen',
                ),
                Tab(
                  icon: Icon(Icons.question_mark),
                  text: 'Quiz',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SearchableQuotes(_affen),
              SearchableQuotes(_clemenshof),
              SearchableQuotes(_katzen),
              SearchableQuotes(_quiz),
              SearchableQuotes(_allQuotes),
            ],
          ),
        ),
      ),
    );
  }

  PlayerState getAudioPlayerState() => getPlaybackState();
}
