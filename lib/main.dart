import 'package:flutter/material.dart';

void main() => runApp(const MyCounter()); // Запуск приложения

class MyCounter extends StatelessWidget {
  const MyCounter({super.key}); // Определение класса MyCounter, который наследуется от StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // создать MaterialApp
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'IndieFlower',
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white, //шрифттын туси
              fontSize: 20,
            )),
        appBarTheme: const AppBarTheme( //тема для AppBar
          backgroundColor: Colors.indigoAccent, // типо navbar goi
        ),
        scaffoldBackgroundColor: Colors.indigo,// вет фона\можно еще добавить отенок(.shade и жанына бир сан уш танбалы)
      ),
      home: Scaffold( // главный экран
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //main info центрада болу керек
            children: [
              Text(
                'Tap "-" to decrement',
              ),
              _CounterWidget(), // Counter Widget шыгарады
              Text(
                'Tap "+" to increment',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CounterWidget extends StatefulWidget {
  const _CounterWidget();

  @override
  State<_CounterWidget> createState() => __CounterWidgetState();
}

class __CounterWidgetState extends State<_CounterWidget> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( //симметричные отступы
        vertical: 10, //Вертикальный отступ
      ),
      child: Container( //контейнер который ишинде + и - и счетчик турады
        width: 120, //узындыгы
        height: 45, //бииктиги
        decoration: BoxDecoration( //типо стильдери
          color: Colors.indigo.shade100, //фон
          borderRadius: const BorderRadius.all( //уголдары
            Radius.circular(6), //радиус скругления углов
          ),
        ),
        child: Row( //енди ишиндеги элементтери
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton( //кнопкасы
              onPressed: () {
                _decrementCounter();
              },
              icon: const Icon( // Иконкасы
                Icons.remove,
              ),
            ),
            Text( //ортасындагы текст
              _count.toString(), //преобразование значения счетчика в строку и вывод
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500, //for bold text
              ),
            ),
            IconButton(
              onPressed: () {
                _incrementCounter();
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}


//Alina's Note:
//_CounterWidget: Это имя класса. Здесь имя начинается с символа подчеркивания _, что означает, что класс является приватным и доступен только в пределах текущего файла.
//extends StatefulWidget: Это ключевое слово extends,rjnjhsq означает, что _CounterWidget может содержать состояние, которое может изменяться во время выполнения приложения.
//shade в Flutter представляет собой вариант цвета, который может быть более темным или более светлым, чем базовый цвет. Он позволяет создавать различные оттенки того же основного цвета.
//ony bylai koldansa bolady: Colors.red.shade300