import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
    final _questions = const [
      { 
        'questionText': 'Quale è la nazione citata dal detective Cooper in Twin Peaks ?',
        'answers': [
          {'text': 'Australia', 'score': 0}, 
          {'text': 'Francia', 'score': 0}, 
          {'text': 'Tibet', 'score': 1}, 
          {'text': 'Vietnam', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale è il produttore del Tie Fighter di Star Wars ?',
        'answers': [
          {'text': 'Sienar Fleet Systems', 'score': 1},
          {'text': 'Consolidated Aereospace', 'score': 0},
          {'text': 'Weyland Yutani', 'score': 0},
          {'text': 'Incom Corporation', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale è il codice identificativo dell\'astronave Enterprise di Star Trek ?',
        'answers': [
          {'text': 'NXP-1970', 'score': 0},
          {'text': 'SFF-3500', 'score': 0},
          {'text': 'XCS-1000', 'score': 0},
          {'text': 'NCC-1701', 'score': 1}
        ]
      }, 
      { 
        'questionText': 'Quale è il nome della prova a cui viene sottoposto Paul Atreides nel romanzo Dune ?',
        'answers': [
          {'text': 'Kwisatz Aderach', 'score': 0}, 
          {'text': 'Gom Jabbar', 'score': 1}, 
          {'text': 'Kull Wahad', 'score': 0}, 
          {'text': 'Feyd Reutha', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale è il modello del Terminator nell\'omonimo film del 1984 ?',
        'answers': [
          {'text': 'T1000', 'score': 0}, 
          {'text': 'T800', 'score': 1}, 
          {'text': 'T100', 'score': 0}, 
          {'text': 'T500', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale bevanda ha un significato particolare nelle opere di David Lynch ?',
        'answers': [
          {'text': 'Latte', 'score': 0}, 
          {'text': 'Thè', 'score': 0}, 
          {'text': 'Caffè', 'score': 1}, 
          {'text': 'Coca Cola', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale videogioco ha come protagonista "Roger Wilco" ?',
        'answers': [
          {'text': 'Star Quest', 'score': 0}, 
          {'text': 'Dragon\'s Lair', 'score': 0}, 
          {'text': 'Monkey Island', 'score': 0},
          {'text': 'Space Quest', 'score': 1} 
        ]
      }, 
      { 
        'questionText': 'Quale di questi non è un Colonial Marine presente nel film Aliens ?',
        'answers': [
          {'text': 'Wierzbowski', 'score': 0}, 
          {'text': 'Dietrich', 'score': 0}, 
          {'text': 'Crowe', 'score': 0},
          {'text': 'Lebowski', 'score': 1}
        ]
      }, 
      { 
        'questionText': 'Quale è il cognome di Neo in Matrix ?',
        'answers': [
          {'text': 'Anderson', 'score': 1}, 
          {'text': 'Parker', 'score': 0}, 
          {'text': 'Smith', 'score': 0}, 
          {'text': 'Collins', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale di questi è il nome di uno dei conigli del romanzo "La Collina dei Conigli" ?',
        'answers': [
          {'text': 'Primo', 'score': 0}, 
          {'text': 'Quintilio', 'score': 1}, 
          {'text': 'Secondino', 'score': 0}, 
          {'text': 'Settimino', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale di questi non è un androide presente nel videogioco "Nier Automata" ?',
        'answers': [
          {'text': '2B', 'score': 0}, 
          {'text': 'C3', 'score': 1},
          {'text': 'A2', 'score': 0}, 
          {'text': '9S', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale di questi brani è presente nella colonna sonora di "Silent Hill 2" ?',
        'answers': [
          {'text': 'Betrayal', 'score': 0}, 
          {'text': 'Eternity', 'score': 0}, 
          {'text': 'Promise', 'score': 1}, 
          {'text': 'Genesis', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale di questi personaggi è presente nel videogioco "Persona 5" ?',
        'answers': [
          {'text': 'Nakata', 'score': 0}, 
          {'text': 'Tsubasa', 'score': 0}, 
          {'text': 'Futaba', 'score': 1}, 
          {'text': 'Hidetoshi', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Di quale manga è protagonista il maggiore Kusanagi ?',
        'answers': [
          {'text': 'Appleseed', 'score': 0}, 
          {'text': 'Evangelion', 'score': 0}, 
          {'text': 'Patlabor', 'score': 0},
          {'text': 'Ghost in the Shell', 'score': 1}, 
        ]
      }, 
      { 
        'questionText': 'Come si chiama una delle nazioni presenti nel videogioco "Valkyria Chronicle" ?',
        'answers': [
          {'text': 'Fresia', 'score': 0}, 
          {'text': 'Gallia', 'score': 1}, 
          {'text': 'Hyrule', 'score': 0}, 
          {'text': 'Sparta', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si chiama il luogotenente Fremen di Paul Muad\'Dib nel romanzo Dune ?',
        'answers': [
          {'text': 'Stilgar', 'score': 1}, 
          {'text': 'Jamis', 'score': 0}, 
          {'text': 'Liet', 'score': 0}, 
          {'text': 'Esmar', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si chiama l\'inquietante coniglio presente nel film "Donnie Darko" ?',
        'answers': [
          {'text': 'Larry', 'score': 0}, 
          {'text': 'Carter', 'score': 0}, 
          {'text': 'Frank', 'score': 1}, 
          {'text': 'Norman', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si chiamano le astronavi del telefilm "Spazio 1999" ?',
        'answers': [
          {'text': 'Corvi', 'score': 0}, 
          {'text': 'Aquile', 'score': 1}, 
          {'text': 'Falchi', 'score': 0}, 
          {'text': 'Civette', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si chiama uno dei personaggi principali del film Rosemary\'s Baby ?',
        'answers': [
          {'text': 'Ralph Wagner', 'score': 0}, 
          {'text': 'Harry Hunter', 'score': 0}, 
          {'text': 'Marcus Isaac', 'score': 0},
          {'text': 'Roman Castevet', 'score': 1}
        ]
      }, 
      { 
        'questionText': 'Come si chiamano le 2 assistenti del dottor Frank\'n\'Furter nel film Rocky Horror Picture Show ?',
        'answers': [
          {'text': 'Clover e Haystack', 'score': 0}, 
          {'text': 'Poppy e Daisy', 'score': 0}, 
          {'text': 'Columbia e Magenta', 'score': 1}, 
          {'text': 'Licorice e Mint', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si chiamano le 3 belle assistenti del romanzo "Straniero in terra straniera" ?',
        'answers': [
          {'text': 'Belle, Emily e Dion', 'score': 0}, 
          {'text': 'Moon, Venus e Mercury', 'score': 0}, 
          {'text': 'Anne, Miriam e Dorcas', 'score': 1}, 
          {'text': 'Angela, Jennifer e Sarah', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si definisce il cervello dei robot descritti da Asimov nei suoi romanzi ?',
        'answers': [
          {'text': 'Cibernetico', 'score': 0}, 
          {'text': 'Asintotico', 'score': 0}, 
          {'text': 'Exogeno', 'score': 0},
          {'text': 'Positronico', 'score': 1}, 
        ]
      }, 
      { 
        'questionText': 'In quale gioco da tavolo possiamo trovare un "Genestealer" ?',
        'answers': [
          {'text': 'Space Hulk', 'score': 1}, 
          {'text': 'Blood Bowl', 'score': 0}, 
          {'text': 'Arkham Horror', 'score': 0}, 
          {'text': 'Netrunner', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Come si chiama il protagonista del romanzo "La Storia Infinita" ?',
        'answers': [
          {'text': 'Mark', 'score': 0}, 
          {'text': 'Bastian', 'score': 1}, 
          {'text': 'Franz', 'score': 0}, 
          {'text': 'Hans', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale divinità è venerata da Conan il barbaro nei romanzi di Howard ?',
        'answers': [
          {'text': 'Ptor', 'score': 0}, 
          {'text': 'Crom', 'score': 1}, 
          {'text': 'Gruul', 'score': 0}, 
          {'text': 'Baal', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Quale fazione è presente nel videogioco Dune 2 ?',
        'answers': [
          {'text': 'Revenant', 'score': 0}, 
          {'text': 'Chimera', 'score': 0}, 
          {'text': 'Ordos', 'score': 1}, 
          {'text': 'Covenant', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Qual è il nome delle unità di fanteria dei Protoss nel videogioco Starcraft ?',
        'answers': [
          {'text': 'Praetorians', 'score': 0}, 
          {'text': 'Zealots', 'score': 1}, 
          {'text': 'Centurions', 'score': 0}, 
          {'text': 'Spartans', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'In quale spinoff di una celebre serie anime è presente il termine "Fumoffu" ?',
        'answers': [
          {'text': 'Full Metal Alchemist', 'score': 0}, 
          {'text': 'City Hunter', 'score': 0}, 
          {'text': 'Sword Art Online', 'score': 0},
          {'text': 'Full Metal Panic', 'score': 1} 
        ]
      }, 
      { 
        'questionText': 'Qual è il nome degli animaletti presenti in quasi tutti i giochi della saga "Final Fantasy" ?',
        'answers': [
          {'text': 'Kodama', 'score': 0}, 
          {'text': 'Yokai', 'score': 0}, 
          {'text': 'Chocobo', 'score': 1}, 
          {'text': 'Ojichan', 'score': 0}
        ]
      }, 
      { 
        'questionText': 'Cosa fa il protagonista del film di animazione dello studio Ghibli "Porco Rosso" ?',
        'answers': [
          {'text': 'Esploratore', 'score': 0}, 
          {'text': 'Aviatore', 'score': 1}, 
          {'text': 'Mago', 'score': 0}, 
          {'text': 'Cuoco', 'score': 0}
        ]
      }, 
    ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('more questions');
    } else {
      print('no more');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp
      (home: Scaffold(
        appBar: AppBar(
          title: Text('Nerd Test'),
        ),
        body: _questionIndex < _questions.length 
          ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions) 
          : Result(_totalScore, _resetQuiz) ,
      ),
    );
  }
  
} 