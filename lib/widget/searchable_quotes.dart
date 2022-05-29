import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:flutter/material.dart';
import 'package:pocket_scat/util/quote.dart';
import 'package:pocket_scat/util/quote_source.dart';

import 'quote_button.dart';

class SearchableQuotes extends StatefulWidget {
  final List<Quote> _allQuotes;

  const SearchableQuotes(this._allQuotes);

  @override
  SearchableQuotesState createState() => SearchableQuotesState(_allQuotes);
}

class SearchableQuotesState extends State<SearchableQuotes> {
  final TextEditingController _filter = TextEditingController();
  final List<Quote> _allQuotes;

  List<Quote> _filteredQuotes = [];
  bool _searching = false;

  SearchableQuotesState(this._allQuotes) {
    _filteredQuotes = _allQuotes;
    _filter.addListener(_searchChanged);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: _buildAppBar(),
        leading: IconButton(
            icon: Icon(_searching ? Icons.close : Icons.search),
            onPressed: _searchPressed),
        // Other Icons here
        actions: [
          // TODO: Implement DarkMode - requires a migration to the new API
          //  IconButton(
          //    onPressed: () {},
          //    icon: const Icon(Icons.sunny),
          //    tooltip: 'Dark Mode',
          //    padding: EdgeInsets.only(right: 40.0),
          //  ),
          IconButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                scrollable: true,
                title: const Text('Kölner Zoo Soundboard - Erklärung'),
                content: const Text(
                    'Die App enthält alle Tierstimmen, die in unterschiedlichen Programmen eingesetzt werden. In der unteren Leiste kann das Programm ausgewählt werden.' +
                        '\n\n' +
                        'Ein kurzes tippen auf den Button spielt die jeweilige Tierstimme ab. In der oberen Leiste kann nach Tieren gesucht werden, indem du auf die Lupe drückst.' +
                        '\n\n' +
                        'Für Fragen, Fehler, Vorschläge oder falls du die App auf deinem eigenen Android-Telefon installieren möchtest melde dich bitte bei Florian Feix (florian.feix@posteo.de).' +
                        '\n\n' +
                        'Letztes Update: 29.05.2022 | Version: 1.0.0 | Entwickler: Florian Feix'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('Schließen'),
                  ),
                ],
              ),
            ),
            icon: const Icon(Icons.info_outline),
            tooltip: 'Info',
            padding: EdgeInsets.only(right: 40.0),
          ),
        ],
      ),
      body: GridView.count(
          crossAxisCount: _computeColumnCount(context),
          childAspectRatio: 1,
          padding: const EdgeInsets.all(0),
          children: _filteredQuotes.map((q) => QuoteButton(q)).toList()),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Zufällige Tierstimme',
        onPressed: _randomPressed,
        child: const Icon(Icons.shuffle),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);

  Widget _buildAppBar() {
    if (_searching) {
      return TextField(
          controller: _filter,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: Colors.white),
            hintText: 'Suchen...',
            suffixText: '${_filteredQuotes.length}',
          ),
          autofocus: true,
          style: const TextStyle(color: Colors.white));
    } else {
      return const Text('Kölner Zoo - Tierstimmen');
    }
  }

  int _computeColumnCount(BuildContext context) =>
      MediaQuery.of(context).size.width ~/ 150;

  void _searchChanged() {
    setState(() {
      _filteredQuotes =
          _allQuotes.where((q) => q.containsSearchTerm(_filter.text)).toList();
    });
  }

  void _searchPressed() {
    setState(() {
      _searching = !_searching;
      if (!_searching) {
        _filter.clear();
        _filteredQuotes = _allQuotes;
      }
    });
  }

  Future _randomPressed() async {
    final element = randomChoice<Quote>(_filteredQuotes);
    await element.play();
  }
}
