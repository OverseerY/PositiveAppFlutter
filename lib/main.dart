import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Positive psychology',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Positive psychology'),
        ),
        body: Center(
          child: _buildList()),
          backgroundColor: Colors.white,
      ),
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

Widget _buildList() => ListView(
  children: [
    Divider(),
    new CardElement(title: 'Тревога', image: 1),
    Divider(),
    new CardElement(title: 'Желание', image: 2),
    Divider(),
    new CardElement(title: 'Злость', image: 3),
    Divider(),
    new CardElement(title: 'Обида', image: 4),
    Divider(),
    new CardElement(title: 'Вина', image: 5),
    Divider(),
    new CardElement(title: 'Стыд', image: 6),
    Divider(),
    new CardElement(title: 'Грусть и горе', image: 7),
    Divider(),
    new CardElement(title: 'Медитация', image: 8),
    Divider(),
    new CardElement(title: 'Выбор', image: 9),
    Divider(),
    new CardElement(title: 'Интерес', image: 10),
    Divider(),
    new CardElement(title: 'Скука и апатия', image: 11),
    Divider(),
    new CardElement(title: 'Страх', image: 12),
    Divider(),
    new CardElement(title: 'Дофамин', image: 13),
    Divider(),
    new CardElement(title: 'Серотонин', image: 14),
    Divider(),
    new CardElement(title: 'Окситоцин', image: 14),
    Divider(),
    new CardElement(title: 'Эндорфин', image: 15),
    Divider(),
    new CardElement(title: 'Шкала сознания Д. Хокинса', image: 16),
    Divider(),
  ],
);

class CardElement extends StatelessWidget {
  final String title;
  final int image;

  CardElement({Key key, @required this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(title: title),
          ),
        );
      },
      child: ListTile(
        title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )
        ),
        trailing: Container(
            child: Image.asset('images/pic$image.png')
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;

  DetailScreen({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Lorem ipsum dolor sit amet...'),
      ),
    );
  }

}









































