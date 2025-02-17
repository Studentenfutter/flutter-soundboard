import 'quote_category.dart';

class QuoteSource {
  final String _name;
  final QuoteCategory _category;
  final String imageName;
  final String _searchTerms;

  const QuoteSource(this._name, this._category, this.imageName,
      [this._searchTerms]);

  bool containsSearchTerm(String searchTerm) {
    final lowerCased = searchTerm.toLowerCase();
    return _name.toLowerCase().contains(lowerCased) ||
        (_searchTerms != null &&
            _searchTerms.toLowerCase().contains(lowerCased)) ||
        QuoteCategoryDesc[_category].toLowerCase().contains(lowerCased);
  }
}

const QuoteSource SRC_QUIZ =
    QuoteSource('Poitou Esel', QuoteCategory.QUIZ, 'poitou_esel');
