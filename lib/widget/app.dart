// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:pocket_scat/util/quote.dart';
import 'package:splashscreen/splashscreen.dart';
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
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen,
        hintColor: Colors.white70);

    return MaterialApp(
        title: 'Kölner Zoo - Tierstimmen',
        theme: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green,
          secondary: Colors.green,
          tertiary: Colors.green,
          onSecondary: Colors.white,
          onPrimary: Colors.white,
        )),
        home: SplashScreen(
          seconds: 1,
          title: Text('Soundboard', style: TextStyle(fontSize: 30)),
          navigateAfterSeconds: MyTabs(
              affen: _affen,
              clemenshof: _clemenshof,
              katzen: _katzen,
              quiz: _quiz,
              allQuotes: _allQuotes),
          image: Image.asset('assets/images/logo.png'),
          photoSize: 100.0,
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: TextStyle(),
          loaderColor: Colors.green,
        ));
  }

  PlayerState getAudioPlayerState() => getPlaybackState();
}

class MyTabs extends StatelessWidget {
  const MyTabs({
    Key key,
    @required List<Quote> affen,
    @required List<Quote> clemenshof,
    @required List<Quote> katzen,
    @required List<Quote> quiz,
    @required List<Quote> allQuotes,
  })  : _affen = affen,
        _clemenshof = clemenshof,
        _katzen = katzen,
        _quiz = quiz,
        _allQuotes = allQuotes,
        super(key: key);

  final List<Quote> _affen;
  final List<Quote> _clemenshof;
  final List<Quote> _katzen;
  final List<Quote> _quiz;
  final List<Quote> _allQuotes;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration.zero,
      length: 5,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          //FloatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Alles',
              ),
              Tab(
                icon: Icon(Icons.spa),
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
    );
  }
}

// Theme Switcher