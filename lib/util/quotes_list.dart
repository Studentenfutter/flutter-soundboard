import 'quote.dart';
import 'quote_source.dart';

// Soundfile, Buttontext, Referenz, Imagename

const List<Quote> ALL_QUOTES = [
  Quote('17_Weisshandgibbon', 'Weisshandgibbon', SRC_QUIZ, 'gibbon',
      'Weisshandgibbon'),
  Quote('8_Gorilla', 'Gorilla (Brusttrommeln)', SRC_QUIZ, 'Gorilla', 'Gorilla'),
  Quote('Gorilla_Weibchen', 'Gorilla ♀', SRC_QUIZ, 'Gorilla', 'Gorilla'),
  Quote('2_Bruellaffe', 'Brüllaffe', SRC_QUIZ, 'affe', 'Bruellaffe'),
  Quote('Bonobo', 'Bonobo', SRC_QUIZ, 'affe', 'Bonobo'),
  Quote(
      '12_Loewenaeffchen', 'Löwenäffchen', SRC_QUIZ, 'affe', 'loewenaeffchen'),
  Quote('roter_vari', 'Roter Vari', SRC_QUIZ, 'Vari', 'roter_vari'),
  Quote('Orang_Utan', 'Orang Utan ♂', SRC_QUIZ, 'Orang', 'Orang_Utan'),
  Quote('Haushuhn_Hahn', 'Hahn', SRC_QUIZ, 'Hahn', 'Hahn'),
  Quote('Haushuhn_Henne', 'Henne', SRC_QUIZ, 'Henne', 'Henne'),
  Quote('Hausziege', 'Hausziege', SRC_QUIZ, 'Ziege', 'Ziege'),
  Quote('Schaf_Herde', 'Schafsherde', SRC_QUIZ, 'Schaf', 'Schaf_Herde'),
  Quote('Schwein', 'Hausschwein', SRC_QUIZ, 'Schwein', 'Schwein'),
  Quote('Rotte', 'Schweineherde (Rotte)', SRC_QUIZ, 'Schwein', 'Rotte'),
  Quote('Skudde', 'Schaf (Ostpreußische Skudde)', SRC_QUIZ, 'Schaf', 'Skudde'),
  Quote('Kuh', 'Kuh', SRC_QUIZ, 'Kuh', 'Kuh'),
  Quote('6_Gepard_Maennchen', 'Gepard ♂', SRC_QUIZ, 'Gepard', 'Gepard'),
  Quote('15_Tiger_Sibirischer', 'Sibirischer Tiger', SRC_QUIZ, 'Tiger',
      'Tiger_Sibirischer'),
  Quote('10_Indischer_Loewe', 'Indischer Löwe ♂', SRC_QUIZ, 'Löwe',
      'Indischer_Loewe'),
  Quote('11_Leopard_Persischer', 'Persischer Leopard', SRC_QUIZ, 'Leopard',
      'Leopard_Persischer'),
  Quote('3_Dolchstichtaube', 'Dolchstichtaube', SRC_QUIZ, 'taube',
      'dolchstichtaube'),
  Quote('4_Flusspferd', 'Flusspferd', SRC_QUIZ, 'Flusspferd', 'Flusspferd'),
  Quote('5_Geierperlhuhn', 'Geierperlhuhn', SRC_QUIZ, '5_Geierperlhuhn',
      'Geierperlhuhn'),
  Quote('7_Hausschaf', 'Hausschaf', SRC_QUIZ, 'schaf', 'Hausschaf'),
  Quote('9_Humboldtpinguin', 'Humboldtpinguin', SRC_QUIZ, 'pinguin',
      'Humboldtpinguin'),
  Quote('13_Nashorn', 'Nashorn', SRC_QUIZ, '13_Nashorn', 'Nashorn'),
  Quote('16_Uhu', 'Uhu', SRC_QUIZ, 'Uhu', 'Uhu'),
];

const List<Quote> AFFEN = [
  Quote('17_Weisshandgibbon', 'Weisshandgibbon', SRC_QUIZ, 'gibbon',
      'Weisshandgibbon'),
  Quote('8_Gorilla', 'Gorilla (Brusttrommeln)', SRC_QUIZ, 'Gorilla', 'Gorilla'),
  Quote('Gorilla_Weibchen', 'Gorilla ♀', SRC_QUIZ, 'Gorilla', 'Gorilla'),
  Quote('2_Bruellaffe', 'Brüllaffe', SRC_QUIZ, 'affe', 'Bruellaffe'),
  Quote('Bonobo', 'Bonobo', SRC_QUIZ, 'affe', 'Bonobo'),
  Quote(
      '12_Loewenaeffchen', 'Löwenäffchen', SRC_QUIZ, 'affe', 'loewenaeffchen'),
  Quote('roter_vari', 'Roter Vari', SRC_QUIZ, 'Vari', 'roter_vari'),
  Quote('Orang_Utan', 'Orang Utan ♂', SRC_QUIZ, 'Orang', 'Orang_Utan'),
];

const List<Quote> CLEMENSHOF = [
  Quote('Haushuhn_Hahn', 'Hahn', SRC_QUIZ, 'Hahn', 'Hahn'),
  Quote('Haushuhn_Henne', 'Henne', SRC_QUIZ, 'Henne', 'Henne'),
  Quote('Hausziege', 'Hausziege', SRC_QUIZ, 'Ziege', 'Ziege'),
  Quote('Schaf_Herde', 'Schafsherde', SRC_QUIZ, 'Schaf', 'Schaf_Herde'),
  Quote('Schwein', 'Hausschwein', SRC_QUIZ, 'Schwein', 'Schwein'),
  Quote('Rotte', 'Schweineherde (Rotte)', SRC_QUIZ, 'Schwein', 'Rotte'),
  Quote('Skudde', 'Schaf (Ostpreußische Skudde)', SRC_QUIZ, 'Schaf', 'Skudde'),
  Quote('Kuh', 'Kuh', SRC_QUIZ, 'Kuh', 'Kuh'),
];

const List<Quote> KATZEN = [
  Quote('6_Gepard_Maennchen', 'Gepard ♂', SRC_QUIZ, 'Gepard', 'Gepard'),
  Quote(
      '12_Loewenaeffchen', 'Löwenäffchen', SRC_QUIZ, 'affe', 'loewenaeffchen'),
  Quote('15_Tiger_Sibirischer', 'Sibirischer Tiger', SRC_QUIZ, 'Tiger',
      'Tiger_Sibirischer'),
  Quote('10_Indischer_Loewe', 'Indischer Löwe ♂', SRC_QUIZ, 'Löwe',
      'Indischer_Loewe'),
  Quote('11_Leopard_Persischer', 'Persischer Leopard', SRC_QUIZ, 'Leopard',
      'Leopard_Persischer'),
];

// Soundfile, Buttontext, Referenz, Imagename
const List<Quote> QUIZ = [
  Quote('2_Bruellaffe', 'Brüllaffe', SRC_QUIZ, 'affe', 'Bruellaffe'),
  Quote('3_Dolchstichtaube', 'Dolchstichtaube', SRC_QUIZ, 'taube',
      'dolchstichtaube'),
  Quote('4_Flusspferd', 'Flusspferd', SRC_QUIZ, 'Flusspferd', 'Flusspferd'),
  Quote('5_Geierperlhuhn', 'Geierperlhuhn', SRC_QUIZ, '5_Geierperlhuhn',
      'Geierperlhuhn'),
  Quote('6_Gepard_Maennchen', 'Gepard ♂', SRC_QUIZ, 'Gepard', 'Gepard'),
  Quote('7_Hausschaf', 'Hausschaf', SRC_QUIZ, 'schaf', 'Hausschaf'),
  Quote('8_Gorilla', 'Gorilla (Brusttrommeln)', SRC_QUIZ, 'Gorilla', 'Gorilla'),
  Quote('9_Humboldtpinguin', 'Humboldtpinguin', SRC_QUIZ, 'pinguin',
      'Humboldtpinguin'),
  Quote('10_Indischer_Loewe', 'Indischer Löwe ♂', SRC_QUIZ, 'Löwe',
      'Indischer_Loewe'),
  Quote('11_Leopard_Persischer', 'Persischer Leopard', SRC_QUIZ, 'Leopard',
      'Leopard_Persischer'),
  Quote(
      '12_Loewenaeffchen', 'Löwenäffchen', SRC_QUIZ, 'affe', 'loewenaeffchen'),
  Quote('13_Nashorn', 'Nashorn', SRC_QUIZ, '13_Nashorn', 'Nashorn'),
  Quote('14_Schwarzweisser_Vari', 'Schwarzweisser Vari', SRC_QUIZ, 'Vari',
      'Schwarzweisser_Vari'),
  Quote('15_Tiger_Sibirischer', 'Sibirischer Tiger', SRC_QUIZ, 'Tiger',
      'Tiger_Sibirischer'),
  Quote('16_Uhu', 'Uhu', SRC_QUIZ, 'Uhu', 'Uhu'),
  Quote('17_Weisshandgibbon', 'Weisshandgibbon', SRC_QUIZ, 'gibbon',
      'Weisshandgibbon'),
];
