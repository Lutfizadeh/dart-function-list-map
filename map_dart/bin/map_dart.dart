void main(List<String> arguments) {
  Map<String, String> dictionary;

  dictionary = {
    // 'onion': 'bawang bombay',
    'garlic': 'bawang putih',
    'tomato': 'tomat',
    'carrot': 'wortel',
  };

  Map<String, String> dictionary2 = {
    'cabbage': 'kol',
    'potato': 'kentang',
    'cucumber': 'mentimun',
    'onion': 'bombay',
  };

  List<MapEntry<String, String>> entries = [
    MapEntry('cabbage', 'kol'),
    MapEntry('potato', 'kentang'),
  ];

  dictionary.addEntries(dictionary2.entries.where((element) => element.key.startsWith('c')));

  dictionary.updateAll((key, value) => key.contains('c') ? 'Contains c' : value);

  // dictionary.removeWhere((key, value) => key.contains('c'));

  dictionary.clear();

  dictionary.forEach((key,value) {
    print('$key: $value');
  });

  print(dictionary.containsKey('garlic'));
  print(dictionary.containsValue('tomat'));
}
